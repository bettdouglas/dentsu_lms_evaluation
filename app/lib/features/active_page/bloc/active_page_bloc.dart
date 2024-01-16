import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'active_page_bloc.freezed.dart';
part 'active_page_event.dart';
part 'active_page_state.dart';

class ActivePageBloc extends Bloc<ActivePageEvent, ActivePageState> {
  ActivePageBloc() : super(const ActivePageState.initial()) {
    on<ActivePageEvent>((event, emit) async {
      event.when(
        started: () {
          add(const ActivePageEvent.changePage(0));
        },
        changePage: (page) {
          emit(ActivePageState.pageLoaded(page));
        },
      );
    });
  }
}
