///
//  Generated code. Do not modify.
//  source: quote_setup_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pb.dart' as $1;
import 'google/protobuf/field_mask.pb.dart' as $7;

class ListQuoteSetupsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListQuoteSetupsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lms'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'parent')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageSize', $pb.PbFieldType.O3)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pageToken')
    ..hasRequiredFields = false
  ;

  ListQuoteSetupsRequest._() : super();
  factory ListQuoteSetupsRequest({
    $core.String? parent,
    $core.int? pageSize,
    $core.String? pageToken,
  }) {
    final _result = create();
    if (parent != null) {
      _result.parent = parent;
    }
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    if (pageToken != null) {
      _result.pageToken = pageToken;
    }
    return _result;
  }
  factory ListQuoteSetupsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListQuoteSetupsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListQuoteSetupsRequest clone() => ListQuoteSetupsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListQuoteSetupsRequest copyWith(void Function(ListQuoteSetupsRequest) updates) => super.copyWith((message) => updates(message as ListQuoteSetupsRequest)) as ListQuoteSetupsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListQuoteSetupsRequest create() => ListQuoteSetupsRequest._();
  ListQuoteSetupsRequest createEmptyInstance() => create();
  static $pb.PbList<ListQuoteSetupsRequest> createRepeated() => $pb.PbList<ListQuoteSetupsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListQuoteSetupsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListQuoteSetupsRequest>(create);
  static ListQuoteSetupsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);
}

class ListQuoteSetupsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListQuoteSetupsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lms'), createEmptyInstance: create)
    ..pc<$1.QuoteSetup>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteSetups', $pb.PbFieldType.PM, protoName: 'QuoteSetups', subBuilder: $1.QuoteSetup.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nextPageToken')
    ..hasRequiredFields = false
  ;

  ListQuoteSetupsResponse._() : super();
  factory ListQuoteSetupsResponse({
    $core.Iterable<$1.QuoteSetup>? quoteSetups,
    $core.String? nextPageToken,
  }) {
    final _result = create();
    if (quoteSetups != null) {
      _result.quoteSetups.addAll(quoteSetups);
    }
    if (nextPageToken != null) {
      _result.nextPageToken = nextPageToken;
    }
    return _result;
  }
  factory ListQuoteSetupsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListQuoteSetupsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListQuoteSetupsResponse clone() => ListQuoteSetupsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListQuoteSetupsResponse copyWith(void Function(ListQuoteSetupsResponse) updates) => super.copyWith((message) => updates(message as ListQuoteSetupsResponse)) as ListQuoteSetupsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListQuoteSetupsResponse create() => ListQuoteSetupsResponse._();
  ListQuoteSetupsResponse createEmptyInstance() => create();
  static $pb.PbList<ListQuoteSetupsResponse> createRepeated() => $pb.PbList<ListQuoteSetupsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListQuoteSetupsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListQuoteSetupsResponse>(create);
  static ListQuoteSetupsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.QuoteSetup> get quoteSetups => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

class GetQuoteSetupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetQuoteSetupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lms'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetQuoteSetupRequest._() : super();
  factory GetQuoteSetupRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetQuoteSetupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetQuoteSetupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetQuoteSetupRequest clone() => GetQuoteSetupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetQuoteSetupRequest copyWith(void Function(GetQuoteSetupRequest) updates) => super.copyWith((message) => updates(message as GetQuoteSetupRequest)) as GetQuoteSetupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetQuoteSetupRequest create() => GetQuoteSetupRequest._();
  GetQuoteSetupRequest createEmptyInstance() => create();
  static $pb.PbList<GetQuoteSetupRequest> createRepeated() => $pb.PbList<GetQuoteSetupRequest>();
  @$core.pragma('dart2js:noInline')
  static GetQuoteSetupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetQuoteSetupRequest>(create);
  static GetQuoteSetupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateQuoteSetupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CreateQuoteSetupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lms'), createEmptyInstance: create)
    ..aOM<$1.QuoteSetup>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteSetup', protoName: 'QuoteSetup', subBuilder: $1.QuoteSetup.create)
    ..hasRequiredFields = false
  ;

  CreateQuoteSetupRequest._() : super();
  factory CreateQuoteSetupRequest({
    $1.QuoteSetup? quoteSetup,
  }) {
    final _result = create();
    if (quoteSetup != null) {
      _result.quoteSetup = quoteSetup;
    }
    return _result;
  }
  factory CreateQuoteSetupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CreateQuoteSetupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CreateQuoteSetupRequest clone() => CreateQuoteSetupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CreateQuoteSetupRequest copyWith(void Function(CreateQuoteSetupRequest) updates) => super.copyWith((message) => updates(message as CreateQuoteSetupRequest)) as CreateQuoteSetupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateQuoteSetupRequest create() => CreateQuoteSetupRequest._();
  CreateQuoteSetupRequest createEmptyInstance() => create();
  static $pb.PbList<CreateQuoteSetupRequest> createRepeated() => $pb.PbList<CreateQuoteSetupRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateQuoteSetupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CreateQuoteSetupRequest>(create);
  static CreateQuoteSetupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.QuoteSetup get quoteSetup => $_getN(0);
  @$pb.TagNumber(1)
  set quoteSetup($1.QuoteSetup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuoteSetup() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuoteSetup() => clearField(1);
  @$pb.TagNumber(1)
  $1.QuoteSetup ensureQuoteSetup() => $_ensure(0);
}

class UpdateQuoteSetupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'UpdateQuoteSetupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lms'), createEmptyInstance: create)
    ..aOM<$1.QuoteSetup>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'QuoteSetup', protoName: 'QuoteSetup', subBuilder: $1.QuoteSetup.create)
    ..aOM<$7.FieldMask>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'updateMask', subBuilder: $7.FieldMask.create)
    ..hasRequiredFields = false
  ;

  UpdateQuoteSetupRequest._() : super();
  factory UpdateQuoteSetupRequest({
    $1.QuoteSetup? quoteSetup,
    $7.FieldMask? updateMask,
  }) {
    final _result = create();
    if (quoteSetup != null) {
      _result.quoteSetup = quoteSetup;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateQuoteSetupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UpdateQuoteSetupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UpdateQuoteSetupRequest clone() => UpdateQuoteSetupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UpdateQuoteSetupRequest copyWith(void Function(UpdateQuoteSetupRequest) updates) => super.copyWith((message) => updates(message as UpdateQuoteSetupRequest)) as UpdateQuoteSetupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateQuoteSetupRequest create() => UpdateQuoteSetupRequest._();
  UpdateQuoteSetupRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateQuoteSetupRequest> createRepeated() => $pb.PbList<UpdateQuoteSetupRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateQuoteSetupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UpdateQuoteSetupRequest>(create);
  static UpdateQuoteSetupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.QuoteSetup get quoteSetup => $_getN(0);
  @$pb.TagNumber(1)
  set quoteSetup($1.QuoteSetup v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasQuoteSetup() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuoteSetup() => clearField(1);
  @$pb.TagNumber(1)
  $1.QuoteSetup ensureQuoteSetup() => $_ensure(0);

  @$pb.TagNumber(2)
  $7.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($7.FieldMask v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $7.FieldMask ensureUpdateMask() => $_ensure(1);
}

class DeleteQuoteSetupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteQuoteSetupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lms'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'id', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  DeleteQuoteSetupRequest._() : super();
  factory DeleteQuoteSetupRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteQuoteSetupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteQuoteSetupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteQuoteSetupRequest clone() => DeleteQuoteSetupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteQuoteSetupRequest copyWith(void Function(DeleteQuoteSetupRequest) updates) => super.copyWith((message) => updates(message as DeleteQuoteSetupRequest)) as DeleteQuoteSetupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteQuoteSetupRequest create() => DeleteQuoteSetupRequest._();
  DeleteQuoteSetupRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteQuoteSetupRequest> createRepeated() => $pb.PbList<DeleteQuoteSetupRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteQuoteSetupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteQuoteSetupRequest>(create);
  static DeleteQuoteSetupRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

