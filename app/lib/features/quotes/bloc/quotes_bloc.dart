import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes_event.dart';
part 'quotes_state.dart';
part 'quotes_bloc.freezed.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  QuotesBloc() : super(const QuotesState.initial()) {
    on<QuotesEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
