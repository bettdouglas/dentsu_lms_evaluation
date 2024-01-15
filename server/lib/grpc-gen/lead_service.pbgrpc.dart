///
//  Generated code. Do not modify.
//  source: lead_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'lead_service.pb.dart' as $3;
import 'models.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $2;
export 'lead_service.pb.dart';

class LeadServiceClient extends $grpc.Client {
  static final _$listLeads =
      $grpc.ClientMethod<$3.ListLeadsRequest, $3.ListLeadsResponse>(
          '/lms.LeadService/ListLeads',
          ($3.ListLeadsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.ListLeadsResponse.fromBuffer(value));
  static final _$getLead = $grpc.ClientMethod<$3.GetLeadRequest, $1.Lead>(
      '/lms.LeadService/GetLead',
      ($3.GetLeadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Lead.fromBuffer(value));
  static final _$createLead =
      $grpc.ClientMethod<$3.CreateLeadRequest, $3.CreateLeadResponse>(
          '/lms.LeadService/CreateLead',
          ($3.CreateLeadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $3.CreateLeadResponse.fromBuffer(value));
  static final _$updateLead = $grpc.ClientMethod<$3.UpdateLeadRequest, $1.Lead>(
      '/lms.LeadService/UpdateLead',
      ($3.UpdateLeadRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Lead.fromBuffer(value));
  static final _$deleteLead =
      $grpc.ClientMethod<$3.DeleteLeadRequest, $2.Empty>(
          '/lms.LeadService/DeleteLead',
          ($3.DeleteLeadRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  LeadServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$3.ListLeadsResponse> listLeads(
      $3.ListLeadsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listLeads, request, options: options);
  }

  $grpc.ResponseFuture<$1.Lead> getLead($3.GetLeadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getLead, request, options: options);
  }

  $grpc.ResponseFuture<$3.CreateLeadResponse> createLead(
      $3.CreateLeadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createLead, request, options: options);
  }

  $grpc.ResponseFuture<$1.Lead> updateLead($3.UpdateLeadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateLead, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteLead($3.DeleteLeadRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteLead, request, options: options);
  }
}

abstract class LeadServiceBase extends $grpc.Service {
  $core.String get $name => 'lms.LeadService';

  LeadServiceBase() {
    $addMethod($grpc.ServiceMethod<$3.ListLeadsRequest, $3.ListLeadsResponse>(
        'ListLeads',
        listLeads_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.ListLeadsRequest.fromBuffer(value),
        ($3.ListLeadsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.GetLeadRequest, $1.Lead>(
        'GetLead',
        getLead_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.GetLeadRequest.fromBuffer(value),
        ($1.Lead value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.CreateLeadRequest, $3.CreateLeadResponse>(
        'CreateLead',
        createLead_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.CreateLeadRequest.fromBuffer(value),
        ($3.CreateLeadResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.UpdateLeadRequest, $1.Lead>(
        'UpdateLead',
        updateLead_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.UpdateLeadRequest.fromBuffer(value),
        ($1.Lead value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$3.DeleteLeadRequest, $2.Empty>(
        'DeleteLead',
        deleteLead_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $3.DeleteLeadRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$3.ListLeadsResponse> listLeads_Pre($grpc.ServiceCall call,
      $async.Future<$3.ListLeadsRequest> request) async {
    return listLeads(call, await request);
  }

  $async.Future<$1.Lead> getLead_Pre(
      $grpc.ServiceCall call, $async.Future<$3.GetLeadRequest> request) async {
    return getLead(call, await request);
  }

  $async.Future<$3.CreateLeadResponse> createLead_Pre($grpc.ServiceCall call,
      $async.Future<$3.CreateLeadRequest> request) async {
    return createLead(call, await request);
  }

  $async.Future<$1.Lead> updateLead_Pre($grpc.ServiceCall call,
      $async.Future<$3.UpdateLeadRequest> request) async {
    return updateLead(call, await request);
  }

  $async.Future<$2.Empty> deleteLead_Pre($grpc.ServiceCall call,
      $async.Future<$3.DeleteLeadRequest> request) async {
    return deleteLead(call, await request);
  }

  $async.Future<$3.ListLeadsResponse> listLeads(
      $grpc.ServiceCall call, $3.ListLeadsRequest request);
  $async.Future<$1.Lead> getLead(
      $grpc.ServiceCall call, $3.GetLeadRequest request);
  $async.Future<$3.CreateLeadResponse> createLead(
      $grpc.ServiceCall call, $3.CreateLeadRequest request);
  $async.Future<$1.Lead> updateLead(
      $grpc.ServiceCall call, $3.UpdateLeadRequest request);
  $async.Future<$2.Empty> deleteLead(
      $grpc.ServiceCall call, $3.DeleteLeadRequest request);
}
