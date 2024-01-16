part of 'leads_bloc.dart';

@freezed
class LeadsEvent with _$LeadsEvent {
  const factory LeadsEvent.started() = _Started;
  const factory LeadsEvent.getLeads() = _GetLeads;
}
