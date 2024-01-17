part of 'quotes_bloc.dart';

@freezed
class QuotesEvent with _$QuotesEvent {
  const factory QuotesEvent.started() = _Started;
  const factory QuotesEvent.loadQuotes() = _LoadQuotes;
}
