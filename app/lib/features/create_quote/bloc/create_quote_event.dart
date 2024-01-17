part of 'create_quote_bloc.dart';

@freezed
class CreateQuoteEvent with _$CreateQuoteEvent {
  const factory CreateQuoteEvent.started() = _Started;
  const factory CreateQuoteEvent.createQuote({
    required Lead lead,
    required String businessUnit,
  }) = _CreateQuote;
}
