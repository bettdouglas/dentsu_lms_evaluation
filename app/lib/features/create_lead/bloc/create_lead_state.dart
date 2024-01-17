part of 'create_lead_bloc.dart';

@freezed
class CreateLeadState with _$CreateLeadState {
  const factory CreateLeadState.initial() = _Initial;
  const factory CreateLeadState.savingLead({
    required String message,
  }) = _SavingLead;
  const factory CreateLeadState.leadSaved({
    required Lead lead,
  }) = _LeadSaved;
  const factory CreateLeadState.error({
    required String error,
  }) = _ErrorSavingLead;
}
