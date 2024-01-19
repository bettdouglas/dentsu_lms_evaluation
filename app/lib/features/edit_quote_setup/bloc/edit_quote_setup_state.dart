part of 'edit_quote_setup_bloc.dart';

@freezed
class EditQuoteSetupState with _$EditQuoteSetupState {
  const factory EditQuoteSetupState.initial() = _Initial;
  const factory EditQuoteSetupState.loading() = _Loading;
  const factory EditQuoteSetupState.edited({
    required String message,
    required QuoteSetup quoteSetup,
  }) = _Edited;
  const factory EditQuoteSetupState.error({
    required String error,
    required EditQuoteSetupEvent editQuoteSetupEvent,
    StackTrace? stackTrace,
  }) = _Error;
}
