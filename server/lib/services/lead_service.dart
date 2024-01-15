import 'package:grpc/grpc.dart';
import 'package:server/database/database.dart' as db;
import 'package:server/grpc-gen/google/protobuf/empty.pb.dart';
import 'package:server/grpc-gen/lead_service.pbgrpc.dart';
import 'package:server/grpc-gen/models.pb.dart';
import 'package:server/services/model_to_grpc_extensions.dart';
import 'package:server/utils/auth_utils.dart';

class LeadService extends LeadServiceBase {
  final db.LmsDb lmsDb;

  LeadService(this.lmsDb);

  @override
  Future<CreateLeadResponse> createLead(
    ServiceCall call,
    CreateLeadRequest request,
  ) async {
    final getTokenResult = await getUidFromMetadata(call);
    return await getTokenResult.fold(
      (l) => throw GrpcError.failedPrecondition(l),
      (agentId) async {
        final lead = request.lead;
        final name = lead.name;
        final email = lead.email;
        final location = lead.location;
        final savedLead = await lmsDb.addLead(
          name: name,
          email: email,
          location: location,
          agentId: agentId,
        );
        return CreateLeadResponse(lead: savedLead.asGrpcLead());
      },
    );
  }

  @override
  Future<Empty> deleteLead(
    ServiceCall call,
    DeleteLeadRequest request,
  ) async {
    await lmsDb.deleteLead(request.id);
    return Empty();
  }

  @override
  Future<Lead> getLead(
    ServiceCall call,
    GetLeadRequest request,
  ) async {
    final lead = await lmsDb.getLead(request.id).getSingleOrNull();
    if (lead == null) {
      throw GrpcError.notFound('Lead not found');
    }
    return lead.asGrpcLead();
  }

  @override
  Future<ListLeadsResponse> listLeads(
    ServiceCall call,
    ListLeadsRequest request,
  ) async {
    final getTokenResult = await getUidFromMetadata(call);
    return await getTokenResult.fold(
      (l) => throw GrpcError.failedPrecondition(l),
      (agentId) async {
        final agentLeads = await lmsDb.getAgentLeads(agentId).get();
        return ListLeadsResponse(
          leads: agentLeads.map((e) => e.asGrpcLead()),
        );
      },
    );
  }

  @override
  Future<Lead> updateLead(
    ServiceCall call,
    UpdateLeadRequest request,
  ) async {
    // TODO: implement updateLead
    throw UnimplementedError();
  }
}
