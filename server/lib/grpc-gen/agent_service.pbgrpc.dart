///
//  Generated code. Do not modify.
//  source: agent_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'agent_service.pb.dart' as $0;
import 'models.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $2;
export 'agent_service.pb.dart';

class AgentServiceClient extends $grpc.Client {
  static final _$listAgents =
      $grpc.ClientMethod<$0.ListAgentsRequest, $0.ListAgentsResponse>(
          '/lms.AgentService/ListAgents',
          ($0.ListAgentsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListAgentsResponse.fromBuffer(value));
  static final _$getAgent = $grpc.ClientMethod<$0.GetAgentRequest, $1.Agent>(
      '/lms.AgentService/GetAgent',
      ($0.GetAgentRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Agent.fromBuffer(value));
  static final _$createAgent =
      $grpc.ClientMethod<$0.CreateAgentRequest, $0.CreateAgentResponse>(
          '/lms.AgentService/CreateAgent',
          ($0.CreateAgentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CreateAgentResponse.fromBuffer(value));
  static final _$updateAgent =
      $grpc.ClientMethod<$0.UpdateAgentRequest, $1.Agent>(
          '/lms.AgentService/UpdateAgent',
          ($0.UpdateAgentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Agent.fromBuffer(value));
  static final _$deleteAgent =
      $grpc.ClientMethod<$0.DeleteAgentRequest, $2.Empty>(
          '/lms.AgentService/DeleteAgent',
          ($0.DeleteAgentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));
  static final _$login = $grpc.ClientMethod<$0.LoginRequest, $0.LoginResponse>(
      '/lms.AgentService/Login',
      ($0.LoginRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.LoginResponse.fromBuffer(value));

  AgentServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.ListAgentsResponse> listAgents(
      $0.ListAgentsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listAgents, request, options: options);
  }

  $grpc.ResponseFuture<$1.Agent> getAgent($0.GetAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getAgent, request, options: options);
  }

  $grpc.ResponseFuture<$0.CreateAgentResponse> createAgent(
      $0.CreateAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createAgent, request, options: options);
  }

  $grpc.ResponseFuture<$1.Agent> updateAgent($0.UpdateAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateAgent, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteAgent($0.DeleteAgentRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteAgent, request, options: options);
  }

  $grpc.ResponseFuture<$0.LoginResponse> login($0.LoginRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$login, request, options: options);
  }
}

abstract class AgentServiceBase extends $grpc.Service {
  $core.String get $name => 'lms.AgentService';

  AgentServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ListAgentsRequest, $0.ListAgentsResponse>(
        'ListAgents',
        listAgents_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListAgentsRequest.fromBuffer(value),
        ($0.ListAgentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetAgentRequest, $1.Agent>(
        'GetAgent',
        getAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetAgentRequest.fromBuffer(value),
        ($1.Agent value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CreateAgentRequest, $0.CreateAgentResponse>(
            'CreateAgent',
            createAgent_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateAgentRequest.fromBuffer(value),
            ($0.CreateAgentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.UpdateAgentRequest, $1.Agent>(
        'UpdateAgent',
        updateAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.UpdateAgentRequest.fromBuffer(value),
        ($1.Agent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteAgentRequest, $2.Empty>(
        'DeleteAgent',
        deleteAgent_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteAgentRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.LoginRequest, $0.LoginResponse>(
        'Login',
        login_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.LoginRequest.fromBuffer(value),
        ($0.LoginResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.ListAgentsResponse> listAgents_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListAgentsRequest> request) async {
    return listAgents(call, await request);
  }

  $async.Future<$1.Agent> getAgent_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetAgentRequest> request) async {
    return getAgent(call, await request);
  }

  $async.Future<$0.CreateAgentResponse> createAgent_Pre($grpc.ServiceCall call,
      $async.Future<$0.CreateAgentRequest> request) async {
    return createAgent(call, await request);
  }

  $async.Future<$1.Agent> updateAgent_Pre($grpc.ServiceCall call,
      $async.Future<$0.UpdateAgentRequest> request) async {
    return updateAgent(call, await request);
  }

  $async.Future<$2.Empty> deleteAgent_Pre($grpc.ServiceCall call,
      $async.Future<$0.DeleteAgentRequest> request) async {
    return deleteAgent(call, await request);
  }

  $async.Future<$0.LoginResponse> login_Pre(
      $grpc.ServiceCall call, $async.Future<$0.LoginRequest> request) async {
    return login(call, await request);
  }

  $async.Future<$0.ListAgentsResponse> listAgents(
      $grpc.ServiceCall call, $0.ListAgentsRequest request);
  $async.Future<$1.Agent> getAgent(
      $grpc.ServiceCall call, $0.GetAgentRequest request);
  $async.Future<$0.CreateAgentResponse> createAgent(
      $grpc.ServiceCall call, $0.CreateAgentRequest request);
  $async.Future<$1.Agent> updateAgent(
      $grpc.ServiceCall call, $0.UpdateAgentRequest request);
  $async.Future<$2.Empty> deleteAgent(
      $grpc.ServiceCall call, $0.DeleteAgentRequest request);
  $async.Future<$0.LoginResponse> login(
      $grpc.ServiceCall call, $0.LoginRequest request);
}
