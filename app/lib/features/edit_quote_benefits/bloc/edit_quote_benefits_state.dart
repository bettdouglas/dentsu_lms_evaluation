part of 'edit_quote_benefits_bloc.dart';

@freezed
class EditQuoteBenefitsState with _$EditQuoteBenefitsState {
  const factory EditQuoteBenefitsState.initial() = _Initial;
  const factory EditQuoteBenefitsState.loading() = _Loading;
  const factory EditQuoteBenefitsState.edited({
    required String message,
    required QuoteBenefit quoteBenefit,
  }) = _Edited;
  const factory EditQuoteBenefitsState.error({
    required String error,
    required EditQuoteBenefitsEvent editQuoteSetupEvent,
    StackTrace? stackTrace,
  }) = _Error;
}
