part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loading({
    required String msg,
  }) = _Loading;
  const factory LoginState.loggedIn({
    required String token,
    required bool persistToken,
  }) = _LoggedIn;
  const factory LoginState.error({
    required String msg,
  }) = _Error;
}
