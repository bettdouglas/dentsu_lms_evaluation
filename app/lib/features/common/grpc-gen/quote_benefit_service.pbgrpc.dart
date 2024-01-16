///
//  Generated code. Do not modify.
//  source: quote_benefit_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'quote_benefit_service.pb.dart' as $4;
import 'models.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $2;
export 'quote_benefit_service.pb.dart';

class QuoteBenefitServiceClient extends $grpc.Client {
  static final _$listQuoteBenefits = $grpc.ClientMethod<
          $4.ListQuoteBenefitsRequest, $4.ListQuoteBenefitsResponse>(
      '/lms.QuoteBenefitService/ListQuoteBenefits',
      ($4.ListQuoteBenefitsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $4.ListQuoteBenefitsResponse.fromBuffer(value));
  static final _$getQuoteBenefit =
      $grpc.ClientMethod<$4.GetQuoteBenefitRequest, $1.QuoteBenefit>(
          '/lms.QuoteBenefitService/GetQuoteBenefit',
          ($4.GetQuoteBenefitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.QuoteBenefit.fromBuffer(value));
  static final _$createQuoteBenefit =
      $grpc.ClientMethod<$4.CreateQuoteBenefitRequest, $1.QuoteBenefit>(
          '/lms.QuoteBenefitService/CreateQuoteBenefit',
          ($4.CreateQuoteBenefitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.QuoteBenefit.fromBuffer(value));
  static final _$updateQuoteBenefit =
      $grpc.ClientMethod<$4.UpdateQuoteBenefitRequest, $1.QuoteBenefit>(
          '/lms.QuoteBenefitService/UpdateQuoteBenefit',
          ($4.UpdateQuoteBenefitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.QuoteBenefit.fromBuffer(value));
  static final _$deleteQuoteBenefit =
      $grpc.ClientMethod<$4.DeleteQuoteBenefitRequest, $2.Empty>(
          '/lms.QuoteBenefitService/DeleteQuoteBenefit',
          ($4.DeleteQuoteBenefitRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  QuoteBenefitServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$4.ListQuoteBenefitsResponse> listQuoteBenefits(
      $4.ListQuoteBenefitsRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listQuoteBenefits, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuoteBenefit> getQuoteBenefit(
      $4.GetQuoteBenefitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQuoteBenefit, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuoteBenefit> createQuoteBenefit(
      $4.CreateQuoteBenefitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createQuoteBenefit, request, options: options);
  }

  $grpc.ResponseFuture<$1.QuoteBenefit> updateQuoteBenefit(
      $4.UpdateQuoteBenefitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateQuoteBenefit, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteQuoteBenefit(
      $4.DeleteQuoteBenefitRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteQuoteBenefit, request, options: options);
  }
}

abstract class QuoteBenefitServiceBase extends $grpc.Service {
  $core.String get $name => 'lms.QuoteBenefitService';

  QuoteBenefitServiceBase() {
    $addMethod($grpc.ServiceMethod<$4.ListQuoteBenefitsRequest,
            $4.ListQuoteBenefitsResponse>(
        'ListQuoteBenefits',
        listQuoteBenefits_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.ListQuoteBenefitsRequest.fromBuffer(value),
        ($4.ListQuoteBenefitsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.GetQuoteBenefitRequest, $1.QuoteBenefit>(
        'GetQuoteBenefit',
        getQuoteBenefit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.GetQuoteBenefitRequest.fromBuffer(value),
        ($1.QuoteBenefit value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.CreateQuoteBenefitRequest, $1.QuoteBenefit>(
            'CreateQuoteBenefit',
            createQuoteBenefit_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.CreateQuoteBenefitRequest.fromBuffer(value),
            ($1.QuoteBenefit value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$4.UpdateQuoteBenefitRequest, $1.QuoteBenefit>(
            'UpdateQuoteBenefit',
            updateQuoteBenefit_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $4.UpdateQuoteBenefitRequest.fromBuffer(value),
            ($1.QuoteBenefit value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$4.DeleteQuoteBenefitRequest, $2.Empty>(
        'DeleteQuoteBenefit',
        deleteQuoteBenefit_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $4.DeleteQuoteBenefitRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$4.ListQuoteBenefitsResponse> listQuoteBenefits_Pre(
      $grpc.ServiceCall call,
      $async.Future<$4.ListQuoteBenefitsRequest> request) async {
    return listQuoteBenefits(call, await request);
  }

  $async.Future<$1.QuoteBenefit> getQuoteBenefit_Pre($grpc.ServiceCall call,
      $async.Future<$4.GetQuoteBenefitRequest> request) async {
    return getQuoteBenefit(call, await request);
  }

  $async.Future<$1.QuoteBenefit> createQuoteBenefit_Pre($grpc.ServiceCall call,
      $async.Future<$4.CreateQuoteBenefitRequest> request) async {
    return createQuoteBenefit(call, await request);
  }

  $async.Future<$1.QuoteBenefit> updateQuoteBenefit_Pre($grpc.ServiceCall call,
      $async.Future<$4.UpdateQuoteBenefitRequest> request) async {
    return updateQuoteBenefit(call, await request);
  }

  $async.Future<$2.Empty> deleteQuoteBenefit_Pre($grpc.ServiceCall call,
      $async.Future<$4.DeleteQuoteBenefitRequest> request) async {
    return deleteQuoteBenefit(call, await request);
  }

  $async.Future<$4.ListQuoteBenefitsResponse> listQuoteBenefits(
      $grpc.ServiceCall call, $4.ListQuoteBenefitsRequest request);
  $async.Future<$1.QuoteBenefit> getQuoteBenefit(
      $grpc.ServiceCall call, $4.GetQuoteBenefitRequest request);
  $async.Future<$1.QuoteBenefit> createQuoteBenefit(
      $grpc.ServiceCall call, $4.CreateQuoteBenefitRequest request);
  $async.Future<$1.QuoteBenefit> updateQuoteBenefit(
      $grpc.ServiceCall call, $4.UpdateQuoteBenefitRequest request);
  $async.Future<$2.Empty> deleteQuoteBenefit(
      $grpc.ServiceCall call, $4.DeleteQuoteBenefitRequest request);
}
