part of 'edit_quote_benefits_bloc.dart';

@freezed
class EditQuoteBenefitsEvent with _$EditQuoteBenefitsEvent {
  const factory EditQuoteBenefitsEvent.started() = _Started;
  const factory EditQuoteBenefitsEvent.editQuoteBenefits({
    required QuoteBenefit quoteBenefit,
    bool? inPatient,
    bool? outPatient,
    bool? noCoPayment,
    bool? dental,
    bool? optical,
    bool? maternity,
    bool? lastExpense,
    bool? personalAccident,
    bool? covid19Cover,
    bool? amrefEvacuation,
  }) = _EditQuoteBenefits;
}
