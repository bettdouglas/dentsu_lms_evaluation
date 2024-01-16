part of 'leads_bloc.dart';

@freezed
class LeadsState with _$LeadsState {
  const factory LeadsState.initial() = _Initial;
  const factory LeadsState.loading() = _Loading;
  const factory LeadsState.loaded({
    required List<Lead> leads,
  }) = _Loaded;
  const factory LeadsState.error({
    required String error,
    StackTrace? stackTrace,
  }) = _Error;
}
