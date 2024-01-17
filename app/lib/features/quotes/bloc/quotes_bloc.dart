import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';
import 'package:lms_app/features/common/grpc-gen/quote_service.pbgrpc.dart';

part 'quotes_bloc.freezed.dart';
part 'quotes_event.dart';
part 'quotes_state.dart';

class QuotesBloc extends Bloc<QuotesEvent, QuotesState> {
  QuotesBloc({
    required this.quoteServiceClient,
  }) : super(const QuotesState.initial()) {
    on<QuotesEvent>((event, emit) async {
      await event.when(
        started: () {
          add(const QuotesEvent.loadQuotes());
        },
        loadQuotes: () async {
          emit(const QuotesState.loading());
          try {
            final response = await quoteServiceClient.listQuotes(
              ListQuotesRequest(),
            );
            emit(QuotesState.loaded(quotes: response.quotes));
          } on GrpcError catch (e) {
            emit(
              QuotesState.error(
                error: e.message ?? 'Failed to load quotes. \n$e',
              ),
            );
          }
        },
      );
    });
  }

  final QuoteServiceClient quoteServiceClient;
}
