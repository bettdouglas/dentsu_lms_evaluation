import 'package:server/database/database.dart';
import 'package:server/database/utils.dart';
import 'package:test/test.dart';

void main() {
  late LmsDb lmsDb;
  late Agent agent1, agent2;
  late Lead agent1Lead1, agent1Lead2, agent2Lead1, agent2Lead2, agent2Lead3;

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
    agent1Lead1 = await lmsDb.addLead(
      name: 'Agent 1 Lead 1',
      email: 'ag1l1',
      location: 'location',
      agentId: agent1.id,
      phone: 'phone',
      accountNumber: 'accountNumber',
      customerType: 'customerType',
    );
    agent1Lead2 = await lmsDb.addLead(
      name: 'Agent 1 Lead 2',
      email: 'ag1l2',
      location: 'location',
      agentId: agent1.id,
      phone: 'phone',
      accountNumber: 'accountNumber',
      customerType: 'customerType',
    );
    agent2Lead1 = await lmsDb.addLead(
      name: 'Agent 2 Lead 1',
      email: 'ag2l1',
      location: 'location',
      agentId: agent2.id,
      phone: 'phone',
      accountNumber: 'accountNumber',
      customerType: 'customerType',
    );
    agent2Lead2 = await lmsDb.addLead(
      name: 'Agent 2 Lead 2',
      email: 'ag2l2',
      location: 'location',
      agentId: agent2.id,
      phone: 'phone',
      accountNumber: 'accountNumber',
      customerType: 'customerType',
    );
    agent2Lead3 = await lmsDb.addLead(
      name: 'Agent 2 Lead 3',
      email: 'ag2l3',
      location: 'location',
      agentId: agent2.id,
      phone: 'phone',
      accountNumber: 'accountNumber',
      customerType: 'customerType',
    );
  });

  test('can save agents', () {
    expect(agent1.email, equals('ag1'));
    expect(agent2.email, equals('ag2'));
  });

  test('can create leads', () async {
    expect(agent1Lead1.sourceAgentId, equals(agent1.id));
    expect(agent2Lead1.sourceAgentId, equals(agent2.id));
  });

  test('can get leads of an agent', () async {
    final agent1Leads = await lmsDb.getAgentLeads(agent1.id).get();
    expect(agent1Leads, hasLength(2));

    final agent2Leads = await lmsDb.getAgentLeads(agent2.id).get();
    expect(agent2Leads, hasLength(3));
  });

  test('can create quotes', () async {
    final savedQuote = await lmsDb.addQuote(
      leadId: agent1Lead1.id,
      owningBusinessUnit: 'owningBusinessUnit',
    );
    expect(savedQuote.lead, equals(agent1Lead1));
    expect(savedQuote.sourceAgent, equals(agent1));
    expect(savedQuote.quoteBenefit?.quoteId, equals(savedQuote.quote.id));

    final secondQuote = await lmsDb.addQuote(
      leadId: agent2Lead2.id,
      owningBusinessUnit: 'Second Business Unit',
    );
    expect(secondQuote.lead, equals(agent2Lead2));
    expect(secondQuote.sourceAgent, equals(agent2));
    expect(secondQuote.quoteBenefit?.quoteId, equals(secondQuote.quote.id));

    var secondAgentQuotes = await lmsDb.getAgentQuotes(agent2.id).get();
    expect(secondAgentQuotes, hasLength(1));
  });

  test('can listen to leads of a specific agent', () async {
    final agent1Stream = lmsDb.watchAgentLeads(agent1.id).watch();

    expect(
      agent1Stream.map((event) => event.map((e) => e.sourceAgentId).toList()),
      emitsInOrder([
        [agent1.id, agent1.id],
      ]),
    );

    final agent2Stream = lmsDb.watchAgentLeads(agent2.id).watch();
    expect(
      agent2Stream.map((event) => event.map((e) => e.sourceAgentId).toList()),
      emitsInOrder([
        [agent2.id, agent2.id, agent2.id],
      ]),
    );
  });
}
