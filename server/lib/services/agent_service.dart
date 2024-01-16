import 'package:drift/drift.dart';
import 'package:grpc/grpc.dart';
import 'package:server/database/database.dart' as db;
import 'package:server/grpc-gen/agent_service.pbgrpc.dart';
import 'package:server/grpc-gen/google/protobuf/empty.pb.dart';
import 'package:server/grpc-gen/models.pb.dart';
import 'package:server/services/model_to_grpc_extensions.dart';
import 'package:server/utils/auth_utils.dart';

class AgentService extends AgentServiceBase {
  final db.LmsDb lmsDb;

  AgentService(this.lmsDb);

  @override
  Future<CreateAgentResponse> createAgent(
    ServiceCall call,
    CreateAgentRequest request,
  ) async {
    final agent = request.agent;
    final username = agent.name;
    final email = agent.email;
    final role = agent.role;
    final similarUser = await lmsDb.searchAgent(username).getSingleOrNull();
    if (similarUser != null) {
      throw GrpcError.alreadyExists(
        'Agent with username: $username already exists',
      );
    }
    final passwordHash = hashPassword(request.password);

    final savedAgent = await lmsDb.addAgent(
      name: username,
      email: email,
      password: passwordHash,
      role: role,
    );
    return CreateAgentResponse(
      agent: agent,
      jwt: createJwt(savedAgent),
    );
  }

  @override
  Future<Empty> deleteAgent(
    ServiceCall call,
    DeleteAgentRequest request,
  ) async {
    await lmsDb.deleteAgent(request.id);
    return Empty();
  }

  @override
  Future<Agent> getAgent(
    ServiceCall call,
    GetAgentRequest request,
  ) async {
    final result = await lmsDb.getAgent(request.id).getSingleOrNull();
    if (result == null) {
      throw GrpcError.notFound('Agent with id: ${request.id} not found');
    }
    return result.asGrpcAgent();
  }

  @override
  Future<ListAgentsResponse> listAgents(
    ServiceCall call,
    ListAgentsRequest request,
  ) async {
    final agents = await lmsDb.agents.all().get();
    return ListAgentsResponse(
      agents: agents.map((e) => e.asGrpcAgent()).toList(),
    );
  }

  @override
  Future<LoginResponse> login(
    ServiceCall call,
    LoginRequest request,
  ) async {
    final username = request.username;
    final password = request.password;

    final result = await lmsDb.searchAgent(username).getSingleOrNull();
    if (result == null) {
      throw GrpcError.notFound('Agent called $username not found');
    }
    final passwordsMatch = checkPassword(password, result.password);
    if (passwordsMatch) {
      final jwt = createJwt(result);
      return LoginResponse(accessToken: jwt);
    }
    throw GrpcError.unauthenticated('Wrong username and password');
  }

  @override
  Future<GetAgentFromTokenResponse> getAgentFromToken(
    ServiceCall call,
    GetAgentFromTokenRequest request,
  ) async {
    final getTokenResult = await getUidFromMetadata(call);
    return await getTokenResult.fold(
      (l) => throw GrpcError.failedPrecondition(l),
      (agentId) async {
        final agent = await lmsDb.getAgent(agentId).getSingleOrNull();
        if (agent == null) {
          throw GrpcError.notFound('Agent with ID $agentId not found');
        }
        return GetAgentFromTokenResponse(
          agent: agent.asGrpcAgent(),
        );
      },
    );
  }

  @override
  Future<Agent> updateAgent(
    ServiceCall call,
    UpdateAgentRequest request,
  ) async {
    // TODO: implement updateAgent
    throw UnimplementedError();
  }
}
