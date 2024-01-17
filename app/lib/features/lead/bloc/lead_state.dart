part of 'lead_bloc.dart';

@freezed
class LeadState with _$LeadState {
  const factory LeadState.initial() = _Initial;
  const factory LeadState.loading() = _Loading;
  const factory LeadState.loaded({
    required Lead lead,
  }) = _Loaded;
  const factory LeadState.error({
    required String message,
    StackTrace? stackTrace,
  }) = _Error;
}
