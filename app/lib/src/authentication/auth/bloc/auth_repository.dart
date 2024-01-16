// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'auth_bloc.dart';

class AuthRepository {
  final AuthProvider authProvider;

  AuthRepository({
    required this.authProvider,
  });

  Future<Either<String, String>> login(
    String username,
    String password, {
    bool persistToken = true,
  }) async {
    return authProvider.login(username, password, persistToken);
  }

  Future<Option<String>> getToken() async {
    return authProvider.getToken();
  }

  Future<void> saveToken(String token) async {
    await authProvider.saveToken(token);
  }

  Future<Either<String, Agent>> checkAgentToken(String token) {
    return authProvider.checkAgentToken(token);
  }

  /// Logout user from storage
  Future<void> deleteToken() async {
    await authProvider.deleteToken();
  }
}
