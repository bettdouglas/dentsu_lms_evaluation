part of 'sign_up_bloc.dart';

@freezed
class SignUpEvent with _$SignUpEvent {
  const factory SignUpEvent.started() = _Started;
  const factory SignUpEvent.signUp({
    required String username,
    required String password,
  }) = _SignUp;
}
