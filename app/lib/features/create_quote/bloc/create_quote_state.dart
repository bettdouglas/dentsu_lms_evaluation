part of 'create_quote_bloc.dart';

@freezed
class CreateQuoteState with _$CreateQuoteState {
  const factory CreateQuoteState.initial() = _Initial;
  const factory CreateQuoteState.savingQuote({
    required String message,
  }) = _SavingQuote;
  const factory CreateQuoteState.quoteSaved({
    required Quote quote,
  }) = _QuoteSaved;
  const factory CreateQuoteState.error({
    required String error,
  }) = _ErrorSavingQuote;
}
