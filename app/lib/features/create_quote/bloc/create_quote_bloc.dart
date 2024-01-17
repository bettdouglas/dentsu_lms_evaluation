import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_quote_event.dart';
part 'create_quote_state.dart';
part 'create_quote_bloc.freezed.dart';

class CreateQuoteBloc extends Bloc<CreateQuoteEvent, CreateQuoteState> {
  CreateQuoteBloc() : super(const CreateQuoteState.initial()) {
    on<CreateQuoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
