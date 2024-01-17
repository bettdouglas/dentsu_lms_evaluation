part of 'create_lead_bloc.dart';

@freezed
class CreateLeadEvent with _$CreateLeadEvent {
  const factory CreateLeadEvent.started() = _Started;
  const factory CreateLeadEvent.saveNewLead({
    required String name,
    required String email,
    required String location,
    required String phone,
    required String customerType,
  }) = _SaveNewLead;
}
