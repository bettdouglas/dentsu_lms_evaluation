import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quote_event.dart';
part 'quote_state.dart';
part 'quote_bloc.freezed.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(const QuoteState.initial()) {
    on<QuoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
