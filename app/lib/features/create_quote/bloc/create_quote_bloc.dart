import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';
import 'package:lms_app/features/common/grpc-gen/quote_service.pbgrpc.dart';

part 'create_quote_bloc.freezed.dart';
part 'create_quote_event.dart';
part 'create_quote_state.dart';

class CreateQuoteBloc extends Bloc<CreateQuoteEvent, CreateQuoteState> {
  CreateQuoteBloc({
    required this.quoteServiceClient,
  }) : super(const CreateQuoteState.initial()) {
    on<CreateQuoteEvent>((event, emit) async {
      await event.when(
        started: () {},
        createQuote: (lead, businessUnit) async {
          emit(
            const CreateQuoteState.savingQuote(message: 'Saving the quote'),
          );
          try {
            final quote = await quoteServiceClient.createQuote(
              CreateQuoteRequest(
                leadId: lead.id,
                quote: Quote(lead: lead, businessUnit: businessUnit),
              ),
            );
            emit(CreateQuoteState.quoteSaved(quote: quote));
          } on GrpcError catch (e) {
            emit(
              CreateQuoteState.error(error: e.message ?? e.toString()),
            );
          }
        },
      );
    });
  }

  final QuoteServiceClient quoteServiceClient;
}
