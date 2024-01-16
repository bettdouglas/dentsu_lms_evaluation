part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.started() = _Started;
  const factory AuthEvent.checkUser() = _Checkuser;
  const factory AuthEvent.login({
    required String token,
    required bool persistToken,
  }) = _Login;
  // const factory AuthEvent.loggedIn({
  //   required String token,
  //   required bool persistToken,
  // }) = _LoggedIn;
}
