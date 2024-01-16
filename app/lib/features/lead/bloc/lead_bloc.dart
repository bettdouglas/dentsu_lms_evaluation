import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'lead_event.dart';
part 'lead_state.dart';
part 'lead_bloc.freezed.dart';

class LeadBloc extends Bloc<LeadEvent, LeadState> {
  LeadBloc() : super(const LeadState.initial()) {
    on<LeadEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
