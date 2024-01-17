import 'package:drift/drift.dart';
import 'package:grpc/grpc.dart';
import 'package:server/database/database.dart' as db;
import 'package:server/grpc-gen/google/protobuf/empty.pb.dart';
import 'package:server/grpc-gen/models.pb.dart';
import 'package:server/grpc-gen/quote_setup_service.pbgrpc.dart';
import 'package:server/services/model_to_grpc_extensions.dart';

class QuoteSetupService extends QuoteSetupServiceBase {
  final db.LmsDb lmsDb;

  QuoteSetupService(this.lmsDb);

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
    final quoteSetup = await lmsDb.getQuoteSetup(request.id).getSingleOrNull();
    if (quoteSetup == null) {
      throw GrpcError.notFound('QuoteSetup not found');
    }
    return quoteSetup.asGrpcQuoteSetup();
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
    final quoteSetup = request.quoteSetup;
    var got = await lmsDb.getQuoteSetup(quoteSetup.id).getSingleOrNull();
    if (got == null) {
      throw GrpcError.notFound('QuoteSetup not found');
    } else {
      final updateMaskPaths = request.updateMask.paths;
      for (var path in updateMaskPaths) {
        switch (path) {
          case 'age_bracket':
            got = got!.copyWith(
              ageBracket: Value(quoteSetup.ageBracket),
            );
            break;
          case 'in_patient_cover_limit':
            got = got!.copyWith(
              inPatientCoverLimit: Value(quoteSetup.inPatientCoverLimit),
            );
            break;
          case 'spouse_covered':
            got = got!.copyWith(
              spouseCovered: Value(quoteSetup.spouseCovered),
            );
            break;
          case 'number_of_children_covered':
            got = got!.copyWith(
              numberOfChildrenCovered:
                  Value(quoteSetup.numberOfChildrenCovered),
            );
            break;
          case 'cover_children':
            got = got!.copyWith(
              coverChildren: Value(quoteSetup.coverChildren),
            );
            break;
          case 'spouse_age_bracket':
            got = got!.copyWith(
              spouseAgeBracket: Value(quoteSetup.spouseAgeBracket),
            );
            break;
        }
      }
      await lmsDb.updateQuoteSetup(got!);
      return got.asGrpcQuoteSetup();
    }
  }
}
