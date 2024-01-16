part of 'active_page_bloc.dart';

@freezed
class ActivePageState with _$ActivePageState {
  const factory ActivePageState.initial() = _Initial;
  const factory ActivePageState.pageLoaded(int page) = _PageLoaded;
}
