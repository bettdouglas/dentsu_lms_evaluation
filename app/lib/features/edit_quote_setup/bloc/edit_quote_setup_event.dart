part of 'edit_quote_setup_bloc.dart';

@freezed
class EditQuoteSetupEvent with _$EditQuoteSetupEvent {
  const factory EditQuoteSetupEvent.started() = _Started;
  const factory EditQuoteSetupEvent.editQuoteSetup({
    String? ageBracket,
    String? inPatientCoverLimit,
    String? spouseCovered,
    String? numberOfChildrenCovered,
    String? coverChildren,
    String? spouseAgeBracket,
    required QuoteSetup quoteSetup,
  }) = _EditAgeBracket;
}
