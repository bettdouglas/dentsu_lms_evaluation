part of 'auth_bloc.dart';

const storage = FlutterSecureStorage();

class AuthProvider {
  AuthProvider({
    required this.storage,
    required this.agentServiceClient,
  });

  final FlutterSecureStorage storage;
  final AgentServiceClient agentServiceClient;

  final _tokenKey = 'token';

  Future<Option<String>> getUser() async {
    final result = await storage.read(key: _tokenKey);
    if (result == null) {
      return none();
    } else {
      return some(result);
    }
  }

  Future<void> saveToken(String token) async {
    await storage.write(key: _tokenKey, value: token);
  }

  Future<Option<String>> getToken() async {
    final token = await storage.read(key: _tokenKey);
    if (token == null) {
      return none();
    } else {
      return Some(token);
    }
  }

  Future<Either<String, String>> login(
    String username,
    String password,
    bool persistOnLogin,
  ) async {
    try {
      final result = await agentServiceClient.login(
        LoginRequest(
          username: username,
          password: password,
        ),
      );
      return right(result.accessToken);
    } on GrpcError catch (e) {
      return left(e.message ?? 'Wrong username or password. $e');
    }
  }

  Future<Either<String, Agent>> checkAgentToken(String token) async {
    try {
      final result = await agentServiceClient.getAgentFromToken(
        GetAgentFromTokenRequest(),
        options: CallOptions(metadata: {'authorization': token}),
      );
      return right(result.agent);
    } on GrpcError catch (e) {
      return left(e.message ?? 'Invalid Token');
    }
  }

  Future<void> deleteToken() async {
    await storage.delete(key: _tokenKey);
  }
}
