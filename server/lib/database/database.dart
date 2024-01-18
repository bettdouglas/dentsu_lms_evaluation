// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:drift/drift.dart';
import 'package:server/database/joined_models.dart';
import 'package:slugid/slugid.dart';

part 'database.g.dart';

/// Table with UUID as id, createdAt, UpdatedAt and soft_delete ability
class GenericTable extends Table {
  /// the id of the row
  IntColumn get id => integer().autoIncrement()();

  DateTimeColumn get createdAt =>
      dateTime().withDefault(Constant(DateTime.now()))();

  DateTimeColumn get updatedAt => dateTime().nullable()();

  /// Whether a row is deleted
  // BoolColumn get isDeleted => boolean().nullable()();

  // @override
  // Set<Column<Object>>? get primaryKey => {id};
}

class Agents extends GenericTable {
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get password => text()();
  TextColumn get role => text()();
}

class Leads extends GenericTable {
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get location => text()();
  TextColumn get status => text()();
  TextColumn get phone => text()();
  TextColumn get accountNumber =>
      text().withDefault(Constant(Slugid.v4().uuid()))();
  TextColumn get customerType => text()();
  DateTimeColumn get appointmentDate => dateTime().nullable()();
  IntColumn get sourceAgentId => integer().references(Agents, #id)();
  TextColumn get source => text()();
  TextColumn get productRequested => text()();
  TextColumn get productSold => text().nullable()();
}

class Quotes extends GenericTable {
  TextColumn get quoteId => text().withDefault(Constant(Slugid.v4().uuid()))();
  IntColumn get leadId => integer().references(Leads, #id)();
  TextColumn get businessUnit => text()();
}

class QuoteSetups extends GenericTable {
  IntColumn get quoteId => integer().unique().references(Quotes, #id)();
  TextColumn get ageBracket => text().nullable()();
  TextColumn get inPatientCoverLimit => text().nullable()();
  TextColumn get spouseCovered => text().nullable()();
  TextColumn get numberOfChildrenCovered => text().nullable()();
  TextColumn get coverChildren => text().nullable()();
  TextColumn get spouseAgeBracket => text().nullable()();
}

class QuoteBenefits extends GenericTable {
  IntColumn get quoteId => integer().unique().references(Quotes, #id)();
  BoolColumn get inPatient => boolean().nullable()();
  BoolColumn get outPatient => boolean().nullable()();
  BoolColumn get noCoPayment => boolean().nullable()();
  BoolColumn get dental => boolean().nullable()();
  BoolColumn get optical => boolean().nullable()();
  BoolColumn get maternity => boolean().nullable()();
  BoolColumn get lastExpense => boolean().nullable()();
  BoolColumn get personalAccident => boolean().nullable()();
  BoolColumn get covid19Cover => boolean().nullable()();
  BoolColumn get amrefEvacuation => boolean().nullable()();
}

@DriftDatabase(
  tables: [
    Agents,
    Leads,
    Quotes,
    QuoteSetups,
    QuoteBenefits,
  ],
)
class LmsDb extends _$LmsDb {
  @override
  final QueryExecutor executor;

  LmsDb(this.executor) : super(executor);

  @override
  int get schemaVersion => 1;

  Future updateAgent(Agent agent) {
    return update(agents).replace(agent);
  }

  SingleOrNullSelectable<Agent> getAgent(int id) {
    return select(agents)..where((tbl) => tbl.id.equals(id));
  }

  Future<void> deleteAgent(int id) {
    return (delete(agents)..where((tbl) => tbl.id.equals(id))).go();
  }

  SingleOrNullSelectable<Agent> searchAgent(String username) {
    return select(agents)..where((tbl) => tbl.name.equals(username));
  }

  MultiSelectable<Agent> watchAgents(List<int> id) {
    return select(agents)..where((tbl) => tbl.id.isIn(id));
  }

  Future<Agent> addAgent({
    required String name,
    required String email,
    required String password,
    required String role,
  }) async {
    final result = await into(agents).insert(
      AgentsCompanion.insert(
        name: name,
        email: email,
        password: password,
        role: role,
      ),
    );
    return getAgent(result).getSingleOrNull().then((value) => value!);
  }

  Future updateLead(Lead agent) {
    return update(leads).replace(agent);
  }

  SingleOrNullSelectable<Lead> getLead(int id) {
    return select(leads)..where((tbl) => tbl.id.equals(id));
  }

  MultiSelectable<Lead> watchAgentLeads(int agentId) {
    return select(leads)..where((tbl) => tbl.sourceAgentId.equals(agentId));
  }

  MultiSelectable<Lead> getAgentLeads(int agentId) {
    return select(leads)..where((tbl) => tbl.sourceAgentId.equals(agentId));
  }

  Future<Lead> addLead({
    required String name,
    required String email,
    required String location,
    required int agentId,
    required String phone,
    required String customerType,
    required String productRequested,
  }) async {
    final result = await into(leads).insert(
      LeadsCompanion.insert(
        name: name,
        email: email,
        location: location,
        sourceAgentId: agentId,
        customerType: customerType,
        phone: phone,
        status: 'New',
        source: 'Mobile',
        productRequested: productRequested,
      ),
    );
    return getLead(result).getSingleOrNull().then((value) => value!);
  }

  Future<void> deleteLead(int id) {
    return (delete(leads)..where((tbl) => tbl.id.equals(id))).go();
  }

  Future updateQuote(Quote quote) {
    return update(quotes).replace(quote);
  }

  SingleOrNullSelectable<QuoteWithAllData> getQuote(int id) {
    final q = select(quotes)..where((tbl) => tbl.id.equals(id));
    final join = q.join(
      [
        innerJoin(leads, leads.id.equalsExp(quotes.leadId)),
        innerJoin(agents, agents.id.equalsExp(leads.sourceAgentId)),
        leftOuterJoin(
          quoteBenefits,
          quoteBenefits.quoteId.equalsExp(quotes.id),
        ),
        leftOuterJoin(
          quoteSetups,
          quoteSetups.quoteId.equalsExp(quotes.id),
        ),
      ],
    );
    return quoteQueryToDataClass(join);
  }

  MultiSelectable<Quote> watchQuotes(List<int> id) {
    return select(quotes)..where((tbl) => tbl.id.isIn(id));
  }

  JoinedSelectStatement<HasResultSet, dynamic> quoteWithDataQuery() {
    return select(quotes).join(
      [
        innerJoin(leads, leads.id.equalsExp(quotes.leadId)),
        innerJoin(agents, agents.id.equalsExp(leads.sourceAgentId)),
        leftOuterJoin(
          quoteBenefits,
          quoteBenefits.quoteId.equalsExp(quotes.id),
        ),
        leftOuterJoin(
          quoteSetups,
          quoteSetups.quoteId.equalsExp(quotes.id),
        ),
      ],
    );
  }

  Selectable<QuoteWithAllData> quoteQueryToDataClass(
    JoinedSelectStatement<HasResultSet, dynamic> query,
  ) {
    return query.map((row) {
      final lead = row.readTable(leads);
      final quote = row.readTable(quotes);
      final agent = row.readTable(agents);
      final quoteBenefit = row.readTableOrNull(quoteBenefits);
      final quoteSetup = row.readTableOrNull(quoteSetups);
      return QuoteWithAllData(
        sourceAgent: agent,
        lead: lead,
        quote: quote,
        quoteBenefit: quoteBenefit,
        quoteSetup: quoteSetup,
      );
    });
  }

  MultiSelectable<QuoteWithAllData> getAgentQuotes(int agentId) {
    final query = quoteWithDataQuery()
      ..where(leads.sourceAgentId.equals(agentId));
    return quoteQueryToDataClass(query);
  }

  Future<QuoteWithAllData> addQuote({
    required int leadId,
    required String owningBusinessUnit,
  }) async {
    final result = await into(quotes).insert(
      QuotesCompanion.insert(
        businessUnit: owningBusinessUnit,
        leadId: leadId,
      ),
    );
    await into(quoteSetups).insert(
      QuoteSetupsCompanion.insert(quoteId: result),
    );
    await into(quoteBenefits).insert(
      QuoteBenefitsCompanion.insert(quoteId: result),
    );
    // create a quote-benefit
    // create a quote-setup
    return getQuote(result).getSingleOrNull().then((value) => value!);
  }

  Future<void> deleteQuote(int id) {
    return (delete(quotes)..where((tbl) => tbl.id.equals(id))).go();
  }

  SingleOrNullSelectable<QuoteSetup> getQuoteSetup(int quoteSetupId) {
    return select(quoteSetups)..where((tbl) => tbl.id.equals(quoteSetupId));
  }

  Future<void> updateQuoteSetup(Insertable<QuoteSetup> quoteSetup) {
    return update(quoteSetups).replace(quoteSetup);
  }

  SingleOrNullSelectable<QuoteBenefit> getQuoteBenefit(int quoteBenefitId) {
    return select(quoteBenefits)..where((tbl) => tbl.id.equals(quoteBenefitId));
  }

  Future<void> updateQuoteBenefit(Insertable<QuoteBenefit> quoteBenefit) {
    return update(quoteBenefits).replace(quoteBenefit);
  }
}
