import 'package:grpc/grpc.dart';
import 'package:server/database/database.dart' as db;
import 'package:server/grpc-gen/google/protobuf/empty.pb.dart';
import 'package:server/grpc-gen/models.pb.dart';
import 'package:server/grpc-gen/quote_service.pbgrpc.dart';
import 'package:server/services/model_to_grpc_extensions.dart';

import '../utils/auth_utils.dart';

class QuoteService extends QuoteServiceBase {
  final db.LmsDb lmsDb;

  QuoteService(this.lmsDb);

  @override
  Future<Quote> createQuote(
    ServiceCall call,
    CreateQuoteRequest request,
  ) async {
    final savedQuote = await lmsDb.addQuote(
      leadId: request.leadId,
      owningBusinessUnit: request.quote.businessUnit,
    );
    return savedQuote.asGrpcQuote();
  }

  @override
  Future<Empty> deleteQuote(
    ServiceCall call,
    DeleteQuoteRequest request,
  ) async {
    await lmsDb.deleteQuote(request.id);
    return Empty();
  }

  @override
  Future<Quote> getQuote(
    ServiceCall call,
    GetQuoteRequest request,
  ) async {
    final got = await lmsDb.getQuote(request.id).getSingleOrNull();
    if (got == null) {
      throw GrpcError.notFound('Quote not found');
    }
    return got.asGrpcQuote();
  }

  @override
  Future<ListQuotesResponse> listQuotes(
    ServiceCall call,
    ListQuotesRequest request,
  ) async {
    final getTokenResult = await getUidFromMetadata(call);
    return await getTokenResult.fold(
      (l) => throw GrpcError.failedPrecondition(l),
      (agentId) async {
        final agentQuotes = await lmsDb.getAgentQuotes(agentId).get();
        return ListQuotesResponse(
          quotes: agentQuotes.map((e) => e.asGrpcQuote()),
        );
      },
    );
  }

  @override
  Future<Quote> updateQuote(
    ServiceCall call,
    UpdateQuoteRequest request,
  ) async {
    // TODO: implement updateQuote
    throw UnimplementedError();
  }
}
