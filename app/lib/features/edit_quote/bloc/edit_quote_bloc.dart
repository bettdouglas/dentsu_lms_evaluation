import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_quote_bloc.freezed.dart';
part 'edit_quote_event.dart';
part 'edit_quote_state.dart';

class EditQuoteBloc extends Bloc<EditQuoteEvent, EditQuoteState> {
  EditQuoteBloc() : super(const EditQuoteState.initial()) {
    on<EditQuoteEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
