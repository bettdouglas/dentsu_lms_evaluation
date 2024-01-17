part of 'quotes_bloc.dart';

@freezed
class QuotesState with _$QuotesState {
  const factory QuotesState.initial() = _Initial;
  const factory QuotesState.loading() = _Loading;
  const factory QuotesState.loaded({
    required List<Quote> quotes,
  }) = _Loaded;
  const factory QuotesState.error({
    required String error,
    StackTrace? st,
  }) = _Failed;
}
