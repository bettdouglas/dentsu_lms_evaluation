part of 'active_page_bloc.dart';

@freezed
class ActivePageEvent with _$ActivePageEvent {
  const factory ActivePageEvent.started() = _Started;
  const factory ActivePageEvent.changePage(int page) = _ChangePage;
}
