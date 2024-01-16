part of 'sign_up_bloc.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.initial() = _Initial;
  const factory SignUpState.loading(String msg) = _Loading;
  const factory SignUpState.signedUp({
    required String token,
  }) = _SignedUp;
  const factory SignUpState.error({
    required String msg,
  }) = _Error;
}
