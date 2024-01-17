import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:grpc/grpc.dart';
import 'package:lms_app/features/common/grpc-gen/lead_service.pbgrpc.dart';
import 'package:lms_app/features/common/grpc-gen/models.pb.dart';

part 'leads_bloc.freezed.dart';
part 'leads_event.dart';
part 'leads_state.dart';

class LeadsBloc extends Bloc<LeadsEvent, LeadsState> {
  LeadsBloc({required this.leadServiceClient})
      : super(const LeadsState.initial()) {
    on<LeadsEvent>((event, emit) async {
      await event.when(
        started: () async {
          add(const LeadsEvent.getLeads());
        },
        getLeads: () async {
          emit(const LeadsState.loading());
          try {
            final response = await leadServiceClient.listLeads(
              ListLeadsRequest(),
            );
            emit(LeadsState.loaded(leads: response.leads));
          } on GrpcError catch (e) {
            emit(
              LeadsState.error(
                error: e.message ??
                    'Error fetching your leeds. Please report this.',
              ),
            );
          }
        },
      );
    });
  }

  final LeadServiceClient leadServiceClient;
}
