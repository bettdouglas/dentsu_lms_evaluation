///
//  Generated code. Do not modify.
//  source: quote_setup_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'quote_setup_service.pb.dart' as $6;
import 'models.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $2;
export 'quote_setup_service.pb.dart';

class QuoteSetupServiceClient extends $grpc.Client {
  static final _$listQuoteSetups =
      $grpc.ClientMethod<$6.ListQuoteSetupsRequest, $6.ListQuoteSetupsResponse>(
          '/lms.QuoteSetupService/ListQuoteSetups',
          ($6.ListQuoteSetupsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $6.ListQuoteSetupsResponse.fromBuffer(value));
  static final _$getQuoteSetup =
      $grpc.ClientMethod<$6.GetQuoteSetupRequest, $1.QuoteSetup>(
          '/lms.QuoteSetupService/GetQuoteSetup',
          ($6.GetQuoteSetupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.QuoteSetup.fromBuffer(value));
  static final _$createQuoteSetup =
      $grpc.ClientMethod<$6.CreateQuoteSetupRequest, $1.QuoteSetup>(
          '/lms.QuoteSetupService/CreateQuoteSetup',
          ($6.CreateQuoteSetupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.QuoteSetup.fromBuffer(value));
  static final _$updateQuoteSetup =
      $grpc.ClientMethod<$6.UpdateQuoteSetupRequest, $1.QuoteSetup>(
          '/lms.QuoteSetupService/UpdateQuoteSetup',
          ($6.UpdateQuoteSetupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.QuoteSetup.fromBuffer(value));
  static final _$deleteQuoteSetup =
      $grpc.ClientMethod<$6.DeleteQuoteSetupRequest, $2.Empty>(
          '/lms.QuoteSetupService/DeleteQuoteSetup',
          ($6.DeleteQuoteSetupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  QuoteSetupServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$6.ListQuoteSetupsResponse> listQuoteSetups(
      $6.ListQuoteSetupsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listQuoteSetups, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuoteSetup> getQuoteSetup(
      $6.GetQuoteSetupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQuoteSetup, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuoteSetup> createQuoteSetup(
      $6.CreateQuoteSetupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createQuoteSetup, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuoteSetup> updateQuoteSetup(
      $6.UpdateQuoteSetupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateQuoteSetup, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteQuoteSetup(
      $6.DeleteQuoteSetupRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteQuoteSetup, request, options: options);
  }
}

abstract class QuoteSetupServiceBase extends $grpc.Service {
  $core.String get $name => 'lms.QuoteSetupService';

  QuoteSetupServiceBase() {
    $addMethod($grpc.ServiceMethod<$6.ListQuoteSetupsRequest,
            $6.ListQuoteSetupsResponse>(
        'ListQuoteSetups',
        listQuoteSetups_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.ListQuoteSetupsRequest.fromBuffer(value),
        ($6.ListQuoteSetupsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.GetQuoteSetupRequest, $1.QuoteSetup>(
        'GetQuoteSetup',
        getQuoteSetup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.GetQuoteSetupRequest.fromBuffer(value),
        ($1.QuoteSetup value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.CreateQuoteSetupRequest, $1.QuoteSetup>(
        'CreateQuoteSetup',
        createQuoteSetup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.CreateQuoteSetupRequest.fromBuffer(value),
        ($1.QuoteSetup value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.UpdateQuoteSetupRequest, $1.QuoteSetup>(
        'UpdateQuoteSetup',
        updateQuoteSetup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.UpdateQuoteSetupRequest.fromBuffer(value),
        ($1.QuoteSetup value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$6.DeleteQuoteSetupRequest, $2.Empty>(
        'DeleteQuoteSetup',
        deleteQuoteSetup_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $6.DeleteQuoteSetupRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$6.ListQuoteSetupsResponse> listQuoteSetups_Pre(
      $grpc.ServiceCall call,
      $async.Future<$6.ListQuoteSetupsRequest> request) async {
    return listQuoteSetups(call, await request);
  }

  $async.Future<$1.QuoteSetup> getQuoteSetup_Pre($grpc.ServiceCall call,
      $async.Future<$6.GetQuoteSetupRequest> request) async {
    return getQuoteSetup(call, await request);
  }

  $async.Future<$1.QuoteSetup> createQuoteSetup_Pre($grpc.ServiceCall call,
      $async.Future<$6.CreateQuoteSetupRequest> request) async {
    return createQuoteSetup(call, await request);
  }

  $async.Future<$1.QuoteSetup> updateQuoteSetup_Pre($grpc.ServiceCall call,
      $async.Future<$6.UpdateQuoteSetupRequest> request) async {
    return updateQuoteSetup(call, await request);
  }

  $async.Future<$2.Empty> deleteQuoteSetup_Pre($grpc.ServiceCall call,
      $async.Future<$6.DeleteQuoteSetupRequest> request) async {
    return deleteQuoteSetup(call, await request);
  }

  $async.Future<$6.ListQuoteSetupsResponse> listQuoteSetups(
      $grpc.ServiceCall call, $6.ListQuoteSetupsRequest request);
  $async.Future<$1.QuoteSetup> getQuoteSetup(
      $grpc.ServiceCall call, $6.GetQuoteSetupRequest request);
  $async.Future<$1.QuoteSetup> createQuoteSetup(
      $grpc.ServiceCall call, $6.CreateQuoteSetupRequest request);
  $async.Future<$1.QuoteSetup> updateQuoteSetup(
      $grpc.ServiceCall call, $6.UpdateQuoteSetupRequest request);
  $async.Future<$2.Empty> deleteQuoteSetup(
      $grpc.ServiceCall call, $6.DeleteQuoteSetupRequest request);
}
