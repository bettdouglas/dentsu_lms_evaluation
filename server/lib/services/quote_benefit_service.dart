import 'package:drift/drift.dart';
import 'package:grpc/grpc.dart';
import 'package:server/database/database.dart' as db;
import 'package:server/grpc-gen/google/protobuf/empty.pb.dart';
import 'package:server/grpc-gen/models.pb.dart';
import 'package:server/grpc-gen/quote_benefit_service.pbgrpc.dart';
import 'package:server/services/model_to_grpc_extensions.dart';

class QuoteBenefitService extends QuoteBenefitServiceBase {
  final db.LmsDb lmsDb;

  QuoteBenefitService(this.lmsDb);

  @override
  Future<QuoteBenefit> createQuoteBenefit(
    ServiceCall call,
    CreateQuoteBenefitRequest request,
  ) async {
    // TODO: implement createQuoteBenefit
    throw UnimplementedError();
  }

  @override
  Future<Empty> deleteQuoteBenefit(
    ServiceCall call,
    DeleteQuoteBenefitRequest request,
  ) async {
    // TODO: implement deleteQuoteBenefit
    throw UnimplementedError();
  }

  @override
  Future<QuoteBenefit> getQuoteBenefit(
    ServiceCall call,
    GetQuoteBenefitRequest request,
  ) async {
    final got = await lmsDb.getQuoteBenefit(request.id).getSingleOrNull();
    if (got == null) {
      throw GrpcError.notFound('QuoteBenefit not found');
    }
    return got.asGrpcQuoteBenefit();
  }

  @override
  Future<ListQuoteBenefitsResponse> listQuoteBenefits(
    ServiceCall call,
    ListQuoteBenefitsRequest request,
  ) async {
    // TODO: implement listQuoteBenefits
    throw UnimplementedError();
  }

  @override
  Future<QuoteBenefit> updateQuoteBenefit(
    ServiceCall call,
    UpdateQuoteBenefitRequest request,
  ) async {
    final quoteBenefit = request.quoteBenefit;
    var got = await lmsDb.getQuoteBenefit(quoteBenefit.id).getSingleOrNull();
    if (got == null) {
      throw GrpcError.notFound('QuoteBenefit not found');
    } else {
      final updateMaskPaths = request.updateMask.paths;
      for (var path in updateMaskPaths) {
        switch (path) {
          case 'inpatient':
            got = got!.copyWith(inPatient: Value(quoteBenefit.inPatient));
            break;
          case 'outpatient':
            got = got!.copyWith(outPatient: Value(quoteBenefit.outPatient));
            break;
          case 'no_co_payment':
            got = got!.copyWith(noCoPayment: Value(quoteBenefit.noCoPayment));
            break;
          case 'dental':
            got = got!.copyWith(dental: Value(quoteBenefit.dental));
            break;
          case 'optical':
            got = got!.copyWith(optical: Value(quoteBenefit.optical));
            break;
          case 'maternity':
            got = got!.copyWith(maternity: Value(quoteBenefit.maternity));
            break;
          case 'last_expense':
            got = got!.copyWith(lastExpense: Value(quoteBenefit.lastExpense));
            break;
          case 'personal_accident':
            got = got!.copyWith(
                personalAccident: Value(quoteBenefit.personalAccident));
            break;
          case 'covid_19_cover':
            got = got!.copyWith(covid19Cover: Value(quoteBenefit.covid19Cover));
            break;
          case 'amref_evacuation':
            got = got!.copyWith(
              amrefEvacuation: Value(quoteBenefit.amrefEvacuation),
            );
            break;
          default:
        }
      }
      await lmsDb.updateQuoteBenefit(got!);
      return got.asGrpcQuoteBenefit();
    }
  }
}
