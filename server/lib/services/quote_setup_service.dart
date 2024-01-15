import 'package:grpc/grpc.dart';
import 'package:server/grpc-gen/google/protobuf/empty.pb.dart';
import 'package:server/grpc-gen/models.pb.dart';
import 'package:server/grpc-gen/quote_setup_service.pbgrpc.dart';

class QuoteSetupService extends QuoteSetupServiceBase {
  @override
  Future<QuoteSetup> createQuoteSetup(
    ServiceCall call,
    CreateQuoteSetupRequest request,
  ) async {
    // TODO: implement createQuoteSetup
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteQuoteSetup(
    ServiceCall call,
    DeleteQuoteSetupRequest request,
  ) async {
    // TODO: implement deleteQuoteSetup
    throw UnimplementedError();
  }

  @override
  Future<QuoteSetup> getQuoteSetup(
    ServiceCall call,
    GetQuoteSetupRequest request,
  ) async {
    // TODO: implement getQuoteSetup
    throw UnimplementedError();
  }

  @override
  Future<ListQuoteSetupsResponse> listQuoteSetups(
    ServiceCall call,
    ListQuoteSetupsRequest request,
  ) async {
    // TODO: implement listQuoteSetups
    throw UnimplementedError();
  }

  @override
  Future<QuoteSetup> updateQuoteSetup(
    ServiceCall call,
    UpdateQuoteSetupRequest request,
  ) async {
    // TODO: implement updateQuoteSetup
    throw UnimplementedError();
  }
}
