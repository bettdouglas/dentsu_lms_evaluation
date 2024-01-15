///
//  Generated code. Do not modify.
//  source: quote_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'quote_service.pb.dart' as $5;
import 'models.pb.dart' as $1;
import 'google/protobuf/empty.pb.dart' as $2;
export 'quote_service.pb.dart';

class QuoteServiceClient extends $grpc.Client {
  static final _$listQuotes =
      $grpc.ClientMethod<$5.ListQuotesRequest, $5.ListQuotesResponse>(
          '/lms.QuoteService/ListQuotes',
          ($5.ListQuotesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $5.ListQuotesResponse.fromBuffer(value));
  static final _$getQuote = $grpc.ClientMethod<$5.GetQuoteRequest, $1.Quote>(
      '/lms.QuoteService/GetQuote',
      ($5.GetQuoteRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $1.Quote.fromBuffer(value));
  static final _$createQuote =
      $grpc.ClientMethod<$5.CreateQuoteRequest, $1.Quote>(
          '/lms.QuoteService/CreateQuote',
          ($5.CreateQuoteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Quote.fromBuffer(value));
  static final _$updateQuote =
      $grpc.ClientMethod<$5.UpdateQuoteRequest, $1.Quote>(
          '/lms.QuoteService/UpdateQuote',
          ($5.UpdateQuoteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $1.Quote.fromBuffer(value));
  static final _$deleteQuote =
      $grpc.ClientMethod<$5.DeleteQuoteRequest, $2.Empty>(
          '/lms.QuoteService/DeleteQuote',
          ($5.DeleteQuoteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $2.Empty.fromBuffer(value));

  QuoteServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$5.ListQuotesResponse> listQuotes(
      $5.ListQuotesRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$listQuotes, request, options: options);
  }

  $grpc.ResponseFuture<$1.Quote> getQuote($5.GetQuoteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getQuote, request, options: options);
  }

  $grpc.ResponseFuture<$1.Quote> createQuote($5.CreateQuoteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$createQuote, request, options: options);
  }

  $grpc.ResponseFuture<$1.Quote> updateQuote($5.UpdateQuoteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$updateQuote, request, options: options);
  }

  $grpc.ResponseFuture<$2.Empty> deleteQuote($5.DeleteQuoteRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$deleteQuote, request, options: options);
  }
}

abstract class QuoteServiceBase extends $grpc.Service {
  $core.String get $name => 'lms.QuoteService';

  QuoteServiceBase() {
    $addMethod($grpc.ServiceMethod<$5.ListQuotesRequest, $5.ListQuotesResponse>(
        'ListQuotes',
        listQuotes_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.ListQuotesRequest.fromBuffer(value),
        ($5.ListQuotesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.GetQuoteRequest, $1.Quote>(
        'GetQuote',
        getQuote_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $5.GetQuoteRequest.fromBuffer(value),
        ($1.Quote value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.CreateQuoteRequest, $1.Quote>(
        'CreateQuote',
        createQuote_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.CreateQuoteRequest.fromBuffer(value),
        ($1.Quote value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.UpdateQuoteRequest, $1.Quote>(
        'UpdateQuote',
        updateQuote_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.UpdateQuoteRequest.fromBuffer(value),
        ($1.Quote value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$5.DeleteQuoteRequest, $2.Empty>(
        'DeleteQuote',
        deleteQuote_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $5.DeleteQuoteRequest.fromBuffer(value),
        ($2.Empty value) => value.writeToBuffer()));
  }

  $async.Future<$5.ListQuotesResponse> listQuotes_Pre($grpc.ServiceCall call,
      $async.Future<$5.ListQuotesRequest> request) async {
    return listQuotes(call, await request);
  }

  $async.Future<$1.Quote> getQuote_Pre(
      $grpc.ServiceCall call, $async.Future<$5.GetQuoteRequest> request) async {
    return getQuote(call, await request);
  }

  $async.Future<$1.Quote> createQuote_Pre($grpc.ServiceCall call,
      $async.Future<$5.CreateQuoteRequest> request) async {
    return createQuote(call, await request);
  }

  $async.Future<$1.Quote> updateQuote_Pre($grpc.ServiceCall call,
      $async.Future<$5.UpdateQuoteRequest> request) async {
    return updateQuote(call, await request);
  }

  $async.Future<$2.Empty> deleteQuote_Pre($grpc.ServiceCall call,
      $async.Future<$5.DeleteQuoteRequest> request) async {
    return deleteQuote(call, await request);
  }

  $async.Future<$5.ListQuotesResponse> listQuotes(
      $grpc.ServiceCall call, $5.ListQuotesRequest request);
  $async.Future<$1.Quote> getQuote(
      $grpc.ServiceCall call, $5.GetQuoteRequest request);
  $async.Future<$1.Quote> createQuote(
      $grpc.ServiceCall call, $5.CreateQuoteRequest request);
  $async.Future<$1.Quote> updateQuote(
      $grpc.ServiceCall call, $5.UpdateQuoteRequest request);
  $async.Future<$2.Empty> deleteQuote(
      $grpc.ServiceCall call, $5.DeleteQuoteRequest request);
}
