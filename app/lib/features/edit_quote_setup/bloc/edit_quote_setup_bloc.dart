import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/features/common/grpc-gen/google/protobuf/field_mask.pb.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';
import 'package:lms_app/features/common/grpc-gen/quote_setup_service.pbgrpc.dart';

part 'edit_quote_setup_bloc.freezed.dart';
part 'edit_quote_setup_event.dart';
part 'edit_quote_setup_state.dart';

class EditQuoteSetupBloc
    extends Bloc<EditQuoteSetupEvent, EditQuoteSetupState> {
  EditQuoteSetupBloc({
    required this.quoteSetupServiceClient,
  }) : super(const EditQuoteSetupState.initial()) {
    on<EditQuoteSetupEvent>((event, emit) async {
      await event.map(
        started: (s) {},
        editQuoteSetup: (e) async {
          emit(const EditQuoteSetupState.loading());
          final qs = QuoteSetup(id: e.quoteSetup.id);
          final updateMaskPaths = <String>[];
          if (e.ageBracket != null) {
            qs.ageBracket = e.ageBracket!;
            updateMaskPaths.add('age_bracket');
          }
          if (e.inPatientCoverLimit != null) {
            qs.inPatientCoverLimit = e.inPatientCoverLimit!;
            updateMaskPaths.add('in_patient_cover_limit');
          }
          if (e.spouseCovered != null) {
            qs.spouseCovered = e.spouseCovered!;
            updateMaskPaths.add('spouse_covered');
          }
          if (e.numberOfChildrenCovered != null) {
            qs.numberOfChildrenCovered = e.numberOfChildrenCovered!;
            updateMaskPaths.add('number_of_children_covered');
          }
          if (e.coverChildren != null) {
            qs.coverChildren = e.coverChildren!;
            updateMaskPaths.add('cover_children');
          }
          if (e.spouseAgeBracket != null) {
            qs.spouseAgeBracket = e.spouseAgeBracket!;
            updateMaskPaths.add('spouse_age_bracket');
          }
          try {
            final updated = await quoteSetupServiceClient.updateQuoteSetup(
              UpdateQuoteSetupRequest(
                quoteSetup: qs,
                updateMask: FieldMask(paths: updateMaskPaths),
              ),
            );
            emit(
              EditQuoteSetupState.edited(
                message: '${updateMaskPaths.join(', ')} updated ',
                quoteSetup: updated,
              ),
            );
          } on GrpcError catch (e) {
            emit(
              EditQuoteSetupState.error(
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

  final QuoteSetupServiceClient quoteSetupServiceClient;
}
