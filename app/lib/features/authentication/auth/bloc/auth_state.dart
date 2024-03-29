part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading(String msg) = _Loading;
  const factory AuthState.authenticated({
    required Agent agent,
  }) = _Authenticated;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.error(String msg) = _Error;
}
