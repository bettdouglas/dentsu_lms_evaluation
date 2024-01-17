part of 'lead_bloc.dart';

@freezed
class LeadEvent with _$LeadEvent {
  const factory LeadEvent.loadLead(int id) = _LoadLead;
}
