import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/features/common/grpc-gen/lead_service.pbgrpc.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';

part 'create_lead_bloc.freezed.dart';
part 'create_lead_event.dart';
part 'create_lead_state.dart';

class CreateLeadBloc extends Bloc<CreateLeadEvent, CreateLeadState> {
  CreateLeadBloc({
    required this.leadServiceClient,
  }) : super(const CreateLeadState.initial()) {
    on<CreateLeadEvent>((event, emit) async {
      await event.map(
        started: (started) {
          emit(const CreateLeadState.initial());
        },
        saveNewLead: (s) async {
          try {
            final response = await leadServiceClient.createLead(
              CreateLeadRequest(
                lead: Lead(
                  name: s.name,
                  email: s.email,
                  phone: s.phone,
                  customerType: s.customerType,
                  location: s.location,
                ),
              ),
            );
            emit(CreateLeadState.leadSaved(lead: response.lead));
          } on GrpcError catch (e) {
            emit(CreateLeadState.error(
              error: e.message ?? 'Failed to save lead. $e',
            ));
          }
        },
      );
    });
  }

  final LeadServiceClient leadServiceClient;
}
