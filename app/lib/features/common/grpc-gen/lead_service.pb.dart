///
//  Generated code. Do not modify.
//  source: lead_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pb.dart' as $1;
import 'google/protobuf/field_mask.pb.dart' as $7;

class ListLeadsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListLeadsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageSize',
        $pb.PbFieldType.O3)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageToken')
    ..hasRequiredFields = false;

  ListLeadsRequest._() : super();
  factory ListLeadsRequest({
    $core.int? pageSize,
    $core.String? pageToken,
  }) {
    final _result = create();
    if (pageSize != null) {
      _result.pageSize = pageSize;
    }
    if (pageToken != null) {
      _result.pageToken = pageToken;
    }
    return _result;
  }
  factory ListLeadsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListLeadsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListLeadsRequest clone() => ListLeadsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListLeadsRequest copyWith(void Function(ListLeadsRequest) updates) =>
      super.copyWith((message) => updates(message as ListLeadsRequest))
          as ListLeadsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLeadsRequest create() => ListLeadsRequest._();
  ListLeadsRequest createEmptyInstance() => create();
  static $pb.PbList<ListLeadsRequest> createRepeated() =>
      $pb.PbList<ListLeadsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListLeadsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListLeadsRequest>(create);
  static ListLeadsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get pageSize => $_getIZ(0);
  @$pb.TagNumber(1)
  set pageSize($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasPageSize() => $_has(0);
  @$pb.TagNumber(1)
  void clearPageSize() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set pageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageToken() => clearField(2);
}

class ListLeadsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListLeadsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..pc<$1.Lead>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'leads',
        $pb.PbFieldType.PM,
        subBuilder: $1.Lead.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nextPageToken')
    ..hasRequiredFields = false;

  ListLeadsResponse._() : super();
  factory ListLeadsResponse({
    $core.Iterable<$1.Lead>? leads,
    $core.String? nextPageToken,
  }) {
    final _result = create();
    if (leads != null) {
      _result.leads.addAll(leads);
    }
    if (nextPageToken != null) {
      _result.nextPageToken = nextPageToken;
    }
    return _result;
  }
  factory ListLeadsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListLeadsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListLeadsResponse clone() => ListLeadsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListLeadsResponse copyWith(void Function(ListLeadsResponse) updates) =>
      super.copyWith((message) => updates(message as ListLeadsResponse))
          as ListLeadsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListLeadsResponse create() => ListLeadsResponse._();
  ListLeadsResponse createEmptyInstance() => create();
  static $pb.PbList<ListLeadsResponse> createRepeated() =>
      $pb.PbList<ListLeadsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListLeadsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListLeadsResponse>(create);
  static ListLeadsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.Lead> get leads => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get nextPageToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextPageToken($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasNextPageToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextPageToken() => clearField(2);
}

class GetLeadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetLeadRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  GetLeadRequest._() : super();
  factory GetLeadRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetLeadRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetLeadRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetLeadRequest clone() => GetLeadRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetLeadRequest copyWith(void Function(GetLeadRequest) updates) =>
      super.copyWith((message) => updates(message as GetLeadRequest))
          as GetLeadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetLeadRequest create() => GetLeadRequest._();
  GetLeadRequest createEmptyInstance() => create();
  static $pb.PbList<GetLeadRequest> createRepeated() =>
      $pb.PbList<GetLeadRequest>();
  @$core.pragma('dart2js:noInline')
  static GetLeadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetLeadRequest>(create);
  static GetLeadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}

class CreateLeadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateLeadRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..aOM<$1.Lead>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lead',
        subBuilder: $1.Lead.create)
    ..hasRequiredFields = false;

  CreateLeadRequest._() : super();
  factory CreateLeadRequest({
    $1.Lead? lead,
  }) {
    final _result = create();
    if (lead != null) {
      _result.lead = lead;
    }
    return _result;
  }
  factory CreateLeadRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateLeadRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateLeadRequest clone() => CreateLeadRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateLeadRequest copyWith(void Function(CreateLeadRequest) updates) =>
      super.copyWith((message) => updates(message as CreateLeadRequest))
          as CreateLeadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateLeadRequest create() => CreateLeadRequest._();
  CreateLeadRequest createEmptyInstance() => create();
  static $pb.PbList<CreateLeadRequest> createRepeated() =>
      $pb.PbList<CreateLeadRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateLeadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateLeadRequest>(create);
  static CreateLeadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Lead get lead => $_getN(0);
  @$pb.TagNumber(1)
  set lead($1.Lead v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLead() => $_has(0);
  @$pb.TagNumber(1)
  void clearLead() => clearField(1);
  @$pb.TagNumber(1)
  $1.Lead ensureLead() => $_ensure(0);
}

class CreateLeadResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateLeadResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..aOM<$1.Lead>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lead',
        subBuilder: $1.Lead.create)
    ..hasRequiredFields = false;

  CreateLeadResponse._() : super();
  factory CreateLeadResponse({
    $1.Lead? lead,
  }) {
    final _result = create();
    if (lead != null) {
      _result.lead = lead;
    }
    return _result;
  }
  factory CreateLeadResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateLeadResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateLeadResponse clone() => CreateLeadResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateLeadResponse copyWith(void Function(CreateLeadResponse) updates) =>
      super.copyWith((message) => updates(message as CreateLeadResponse))
          as CreateLeadResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateLeadResponse create() => CreateLeadResponse._();
  CreateLeadResponse createEmptyInstance() => create();
  static $pb.PbList<CreateLeadResponse> createRepeated() =>
      $pb.PbList<CreateLeadResponse>();
  @$core.pragma('dart2js:noInline')
  static CreateLeadResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateLeadResponse>(create);
  static CreateLeadResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Lead get lead => $_getN(0);
  @$pb.TagNumber(1)
  set lead($1.Lead v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLead() => $_has(0);
  @$pb.TagNumber(1)
  void clearLead() => clearField(1);
  @$pb.TagNumber(1)
  $1.Lead ensureLead() => $_ensure(0);
}

class UpdateLeadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateLeadRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..aOM<$1.Lead>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lead',
        subBuilder: $1.Lead.create)
    ..aOM<$7.FieldMask>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateMask',
        subBuilder: $7.FieldMask.create)
    ..hasRequiredFields = false;

  UpdateLeadRequest._() : super();
  factory UpdateLeadRequest({
    $1.Lead? lead,
    $7.FieldMask? updateMask,
  }) {
    final _result = create();
    if (lead != null) {
      _result.lead = lead;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateLeadRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateLeadRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateLeadRequest clone() => UpdateLeadRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateLeadRequest copyWith(void Function(UpdateLeadRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateLeadRequest))
          as UpdateLeadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateLeadRequest create() => UpdateLeadRequest._();
  UpdateLeadRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateLeadRequest> createRepeated() =>
      $pb.PbList<UpdateLeadRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateLeadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateLeadRequest>(create);
  static UpdateLeadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.Lead get lead => $_getN(0);
  @$pb.TagNumber(1)
  set lead($1.Lead v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasLead() => $_has(0);
  @$pb.TagNumber(1)
  void clearLead() => clearField(1);
  @$pb.TagNumber(1)
  $1.Lead ensureLead() => $_ensure(0);

  @$pb.TagNumber(2)
  $7.FieldMask get updateMask => $_getN(1);
  @$pb.TagNumber(2)
  set updateMask($7.FieldMask v) {
    setField(2, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasUpdateMask() => $_has(1);
  @$pb.TagNumber(2)
  void clearUpdateMask() => clearField(2);
  @$pb.TagNumber(2)
  $7.FieldMask ensureUpdateMask() => $_ensure(1);
}

class DeleteLeadRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteLeadRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..a<$core.int>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'id',
        $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  DeleteLeadRequest._() : super();
  factory DeleteLeadRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteLeadRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteLeadRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteLeadRequest clone() => DeleteLeadRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteLeadRequest copyWith(void Function(DeleteLeadRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteLeadRequest))
          as DeleteLeadRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteLeadRequest create() => DeleteLeadRequest._();
  DeleteLeadRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteLeadRequest> createRepeated() =>
      $pb.PbList<DeleteLeadRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteLeadRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteLeadRequest>(create);
  static DeleteLeadRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get id => $_getIZ(0);
  @$pb.TagNumber(1)
  set id($core.int v) {
    $_setSignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasId() => $_has(0);
  @$pb.TagNumber(1)
  void clearId() => clearField(1);
}
