import 'package:server/database/database.dart';
import 'package:server/database/database_io.dart';
import 'package:test/test.dart';

void main() {
  late LmsDb lmsDb;
  late Agent agent1, agent2;

  setUp(() async {
    lmsDb = LmsDb(openMemoryDatabase());
    agent1 = await lmsDb.addAgent(
      name: 'Agent 1',
      email: 'ag1',
      password: 'password',
      role: 'role',
    );
    agent2 = await lmsDb.addAgent(
      name: 'Agent 2',
      email: 'ag2',
      password: 'password',
      role: 'role',
    );
  });

  test('can save agents', () {
    expect(agent1.email, equals('ag1'));
    expect(agent2.email, equals('ag2'));
  });

  test('can create leads', () async {
    final savedLead = await lmsDb.addLead(
      name: 'Lead 1',
      email: 'lead1',
      location: 'Nairobi',
      agentId: agent1.id,
    );

    expect(savedLead.sourceAgentId, equals(agent1.id));
    expect(savedLead.sourceAgentId, isNot(agent2.id));
  });

  test('can get leads of an agent', () async {
    await lmsDb.addLead(
      name: 'Lead 1',
      email: 'lead1',
      location: 'Nairobi',
      agentId: agent1.id,
    );
    final agent1Leads = await lmsDb.getAgentLeads(agent1.id).get();
    expect(agent1Leads, hasLength(1));

    final agent2Leads = await lmsDb.getAgentLeads(agent2.id).get();
    expect(agent2Leads, isEmpty);
  });

  test('can create quotes', () async {
    final savedLead = await lmsDb.addLead(
      name: 'Lead 1',
      email: 'lead1',
      location: 'Nairobi',
      agentId: agent1.id,
    );

    final secondSavedLead = await lmsDb.addLead(
      name: 'Lead 2',
      email: 'lead2',
      location: 'Nakuru',
      agentId: agent1.id,
    );

    final thirdSavedLead = await lmsDb.addLead(
      name: 'Lead 3',
      email: 'lead3',
      location: 'Nakuru',
      agentId: agent2.id,
    );

    final savedQuote = await lmsDb.addQuote(
      leadId: savedLead.id,
      owningBusinessUnit: 'owningBusinessUnit',
    );
    expect(savedQuote.lead, equals(savedLead));
    expect(savedQuote.sourceAgent, equals(agent1));
    expect(savedQuote.quoteBenefit?.quoteId, equals(savedQuote.quote.id));

    final savedQuote2 = await lmsDb.addQuote(
      leadId: secondSavedLead.id,
      owningBusinessUnit: 'Second Business Unit',
    );
    expect(savedQuote2.lead, equals(secondSavedLead));
    expect(savedQuote.sourceAgent, equals(agent1));
    expect(savedQuote.quoteBenefit?.quoteId, equals(savedQuote2.quote.id));

    var agent2Quotes = await lmsDb.getAgentQuotes(agent2.id).get();
    expect(agent2Quotes, hasLength(0));
  });
}
