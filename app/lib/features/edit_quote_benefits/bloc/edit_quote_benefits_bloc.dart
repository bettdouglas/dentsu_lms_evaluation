import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/features/common/grpc-gen/google/protobuf/field_mask.pbserver.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';
import 'package:lms_app/features/common/grpc-gen/quote_benefit_service.pbgrpc.dart';

part 'edit_quote_benefits_bloc.freezed.dart';
part 'edit_quote_benefits_event.dart';
part 'edit_quote_benefits_state.dart';

class EditQuoteBenefitsBloc
    extends Bloc<EditQuoteBenefitsEvent, EditQuoteBenefitsState> {
  EditQuoteBenefitsBloc({
    required this.benefitServiceClient,
  }) : super(const EditQuoteBenefitsState.initial()) {
    on<EditQuoteBenefitsEvent>((event, emit) async {
      await event.map(
        started: (s) {},
        editQuoteBenefits: (e) async {
          emit(const EditQuoteBenefitsState.loading());
          final updateMaskPaths = <String>[];
          final update = QuoteBenefit(id: e.quoteBenefit.id);
          if (e.inPatient != null) {
            update.inPatient = e.inPatient!;
            updateMaskPaths.add('inpatient');
          }
          if (e.outPatient != null) {
            update.outPatient = e.outPatient!;
            updateMaskPaths.add('outpatient');
          }
          if (e.noCoPayment != null) {
            update.noCoPayment = e.noCoPayment!;
            updateMaskPaths.add('no_co_payment');
          }
          if (e.dental != null) {
            update.dental = e.dental!;
            updateMaskPaths.add('dental');
          }
          if (e.optical != null) {
            update.optical = e.optical!;
            updateMaskPaths.add('optical');
          }
          if (e.maternity != null) {
            update.maternity = e.maternity!;
            updateMaskPaths.add('maternity');
          }
          if (e.lastExpense != null) {
            update.lastExpense = e.lastExpense!;
            updateMaskPaths.add('last_expense');
          }
          if (e.personalAccident != null) {
            update.personalAccident = e.personalAccident!;
            updateMaskPaths.add('personal_accident');
          }
          if (e.covid19Cover != null) {
            update.covid19Cover = e.covid19Cover!;
            updateMaskPaths.add('covid_19_cover');
          }
          if (e.amrefEvacuation != null) {
            update.amrefEvacuation = e.amrefEvacuation!;
            updateMaskPaths.add('amref_evacuation');
          }
          try {
            final updated = await benefitServiceClient.updateQuoteBenefit(
              UpdateQuoteBenefitRequest(
                quoteBenefit: update,
                updateMask: FieldMask(paths: updateMaskPaths),
              ),
            );
            emit(
              EditQuoteBenefitsState.edited(
                message: '${updateMaskPaths.join(', ')} updated',
                quoteBenefit: updated,
              ),
            );
          } on GrpcError catch (e) {
            emit(
              EditQuoteBenefitsState.error(
                error: e.message ??
                    'Failed to update ${updateMaskPaths.join(', ')}',
                editQuoteSetupEvent: event,
              ),
            );
          }
        },
      );
    });
  }
  final QuoteBenefitServiceClient benefitServiceClient;
}
