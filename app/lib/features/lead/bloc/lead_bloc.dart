import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/features/common/grpc-gen/lead_service.pbgrpc.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';

part 'lead_bloc.freezed.dart';
part 'lead_event.dart';
part 'lead_state.dart';

class LeadBloc extends Bloc<LeadEvent, LeadState> {
  LeadBloc({
    required this.leadServiceClient,
  }) : super(const LeadState.initial()) {
    on<LeadEvent>((event, emit) async {
      await event.when(
        loadLead: (leadId) async {
          try {
            final response = await leadServiceClient.getLead(
              GetLeadRequest(id: leadId),
            );
            emit(LeadState.loaded(lead: response));
          } on GrpcError catch (e) {
            emit(
              LeadState.error(
                message: e.message ?? e.toString(),
              ),
            );
          }
        },
      );
    });
  }

  final LeadServiceClient leadServiceClient;
}
