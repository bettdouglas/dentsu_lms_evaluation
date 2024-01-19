part of 'quote_bloc.dart';

@freezed
class QuoteEvent with _$QuoteEvent {
  const factory QuoteEvent.loadQuote(int id) = _LoadQuote;
  const factory QuoteEvent.quoteUpdated({
    QuoteBenefit? quoteBenefit,
    QuoteSetup? quoteSetup,
  }) = _QuoteUpdated;
}
