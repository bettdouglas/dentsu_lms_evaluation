import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';
import 'package:lms_app/features/common/grpc-gen/quote_service.pbgrpc.dart';
import 'package:protobuf/protobuf.dart';

part 'quote_bloc.freezed.dart';
part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc({
    required this.quoteServiceClient,
  }) : super(const QuoteState.initial()) {
    on<QuoteEvent>((event, emit) async {
      await event.when(
        loadQuote: (quoteId) async {
          try {
            final quote = await quoteServiceClient.getQuote(
              GetQuoteRequest(id: quoteId),
            );
            emit(QuoteState.loaded(quote: quote));
          } on GrpcError catch (e) {
            emit(
              QuoteState.error(
                message: e.message ?? e.toString(),
              ),
            );
          }
        },
        quoteUpdated: (quoteBenefit, quoteSetup) async {
          state.maybeWhen(
            orElse: () {},
            loaded: (quote) {
              final q = quote.deepCopy();
              if (quoteBenefit != null) {
                q.benefits = quoteBenefit;
              }
              if (quoteSetup != null) {
                q.setup = quoteSetup;
              }
              emit(QuoteState.loaded(quote: q));
            },
          );
        },
      );
    });
  }

  final QuoteServiceClient quoteServiceClient;
}
