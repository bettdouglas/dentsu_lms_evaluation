///
//  Generated code. Do not modify.
//  source: quote_benefit_service.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'models.pb.dart' as $1;
import 'google/protobuf/field_mask.pb.dart' as $7;

class ListQuoteBenefitsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListQuoteBenefitsRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'parent')
    ..a<$core.int>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageSize',
        $pb.PbFieldType.O3)
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'pageToken')
    ..hasRequiredFields = false;

  ListQuoteBenefitsRequest._() : super();
  factory ListQuoteBenefitsRequest({
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
  factory ListQuoteBenefitsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListQuoteBenefitsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListQuoteBenefitsRequest clone() =>
      ListQuoteBenefitsRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListQuoteBenefitsRequest copyWith(
          void Function(ListQuoteBenefitsRequest) updates) =>
      super.copyWith((message) => updates(message as ListQuoteBenefitsRequest))
          as ListQuoteBenefitsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListQuoteBenefitsRequest create() => ListQuoteBenefitsRequest._();
  ListQuoteBenefitsRequest createEmptyInstance() => create();
  static $pb.PbList<ListQuoteBenefitsRequest> createRepeated() =>
      $pb.PbList<ListQuoteBenefitsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListQuoteBenefitsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListQuoteBenefitsRequest>(create);
  static ListQuoteBenefitsRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get parent => $_getSZ(0);
  @$pb.TagNumber(1)
  set parent($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasParent() => $_has(0);
  @$pb.TagNumber(1)
  void clearParent() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get pageSize => $_getIZ(1);
  @$pb.TagNumber(2)
  set pageSize($core.int v) {
    $_setSignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasPageSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearPageSize() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get pageToken => $_getSZ(2);
  @$pb.TagNumber(3)
  set pageToken($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasPageToken() => $_has(2);
  @$pb.TagNumber(3)
  void clearPageToken() => clearField(3);
}

class ListQuoteBenefitsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'ListQuoteBenefitsResponse',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..pc<$1.QuoteBenefit>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'quoteBenefits',
        $pb.PbFieldType.PM,
        subBuilder: $1.QuoteBenefit.create)
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'nextPageToken')
    ..hasRequiredFields = false;

  ListQuoteBenefitsResponse._() : super();
  factory ListQuoteBenefitsResponse({
    $core.Iterable<$1.QuoteBenefit>? quoteBenefits,
    $core.String? nextPageToken,
  }) {
    final _result = create();
    if (quoteBenefits != null) {
      _result.quoteBenefits.addAll(quoteBenefits);
    }
    if (nextPageToken != null) {
      _result.nextPageToken = nextPageToken;
    }
    return _result;
  }
  factory ListQuoteBenefitsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListQuoteBenefitsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  ListQuoteBenefitsResponse clone() =>
      ListQuoteBenefitsResponse()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  ListQuoteBenefitsResponse copyWith(
          void Function(ListQuoteBenefitsResponse) updates) =>
      super.copyWith((message) => updates(message as ListQuoteBenefitsResponse))
          as ListQuoteBenefitsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListQuoteBenefitsResponse create() => ListQuoteBenefitsResponse._();
  ListQuoteBenefitsResponse createEmptyInstance() => create();
  static $pb.PbList<ListQuoteBenefitsResponse> createRepeated() =>
      $pb.PbList<ListQuoteBenefitsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListQuoteBenefitsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListQuoteBenefitsResponse>(create);
  static ListQuoteBenefitsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$1.QuoteBenefit> get quoteBenefits => $_getList(0);

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

class GetQuoteBenefitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'GetQuoteBenefitRequest',
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

  GetQuoteBenefitRequest._() : super();
  factory GetQuoteBenefitRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory GetQuoteBenefitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetQuoteBenefitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  GetQuoteBenefitRequest clone() =>
      GetQuoteBenefitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  GetQuoteBenefitRequest copyWith(
          void Function(GetQuoteBenefitRequest) updates) =>
      super.copyWith((message) => updates(message as GetQuoteBenefitRequest))
          as GetQuoteBenefitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetQuoteBenefitRequest create() => GetQuoteBenefitRequest._();
  GetQuoteBenefitRequest createEmptyInstance() => create();
  static $pb.PbList<GetQuoteBenefitRequest> createRepeated() =>
      $pb.PbList<GetQuoteBenefitRequest>();
  @$core.pragma('dart2js:noInline')
  static GetQuoteBenefitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetQuoteBenefitRequest>(create);
  static GetQuoteBenefitRequest? _defaultInstance;

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

class CreateQuoteBenefitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'CreateQuoteBenefitRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..aOM<$1.QuoteBenefit>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'quoteBenefit',
        subBuilder: $1.QuoteBenefit.create)
    ..hasRequiredFields = false;

  CreateQuoteBenefitRequest._() : super();
  factory CreateQuoteBenefitRequest({
    $1.QuoteBenefit? quoteBenefit,
  }) {
    final _result = create();
    if (quoteBenefit != null) {
      _result.quoteBenefit = quoteBenefit;
    }
    return _result;
  }
  factory CreateQuoteBenefitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CreateQuoteBenefitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  CreateQuoteBenefitRequest clone() =>
      CreateQuoteBenefitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  CreateQuoteBenefitRequest copyWith(
          void Function(CreateQuoteBenefitRequest) updates) =>
      super.copyWith((message) => updates(message as CreateQuoteBenefitRequest))
          as CreateQuoteBenefitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CreateQuoteBenefitRequest create() => CreateQuoteBenefitRequest._();
  CreateQuoteBenefitRequest createEmptyInstance() => create();
  static $pb.PbList<CreateQuoteBenefitRequest> createRepeated() =>
      $pb.PbList<CreateQuoteBenefitRequest>();
  @$core.pragma('dart2js:noInline')
  static CreateQuoteBenefitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateQuoteBenefitRequest>(create);
  static CreateQuoteBenefitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.QuoteBenefit get quoteBenefit => $_getN(0);
  @$pb.TagNumber(1)
  set quoteBenefit($1.QuoteBenefit v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQuoteBenefit() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuoteBenefit() => clearField(1);
  @$pb.TagNumber(1)
  $1.QuoteBenefit ensureQuoteBenefit() => $_ensure(0);
}

class UpdateQuoteBenefitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'UpdateQuoteBenefitRequest',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..aOM<$1.QuoteBenefit>(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'quoteBenefit',
        subBuilder: $1.QuoteBenefit.create)
    ..aOM<$7.FieldMask>(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updateMask',
        subBuilder: $7.FieldMask.create)
    ..hasRequiredFields = false;

  UpdateQuoteBenefitRequest._() : super();
  factory UpdateQuoteBenefitRequest({
    $1.QuoteBenefit? quoteBenefit,
    $7.FieldMask? updateMask,
  }) {
    final _result = create();
    if (quoteBenefit != null) {
      _result.quoteBenefit = quoteBenefit;
    }
    if (updateMask != null) {
      _result.updateMask = updateMask;
    }
    return _result;
  }
  factory UpdateQuoteBenefitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UpdateQuoteBenefitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  UpdateQuoteBenefitRequest clone() =>
      UpdateQuoteBenefitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  UpdateQuoteBenefitRequest copyWith(
          void Function(UpdateQuoteBenefitRequest) updates) =>
      super.copyWith((message) => updates(message as UpdateQuoteBenefitRequest))
          as UpdateQuoteBenefitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UpdateQuoteBenefitRequest create() => UpdateQuoteBenefitRequest._();
  UpdateQuoteBenefitRequest createEmptyInstance() => create();
  static $pb.PbList<UpdateQuoteBenefitRequest> createRepeated() =>
      $pb.PbList<UpdateQuoteBenefitRequest>();
  @$core.pragma('dart2js:noInline')
  static UpdateQuoteBenefitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UpdateQuoteBenefitRequest>(create);
  static UpdateQuoteBenefitRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $1.QuoteBenefit get quoteBenefit => $_getN(0);
  @$pb.TagNumber(1)
  set quoteBenefit($1.QuoteBenefit v) {
    setField(1, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasQuoteBenefit() => $_has(0);
  @$pb.TagNumber(1)
  void clearQuoteBenefit() => clearField(1);
  @$pb.TagNumber(1)
  $1.QuoteBenefit ensureQuoteBenefit() => $_ensure(0);

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

class DeleteQuoteBenefitRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'DeleteQuoteBenefitRequest',
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

  DeleteQuoteBenefitRequest._() : super();
  factory DeleteQuoteBenefitRequest({
    $core.int? id,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    return _result;
  }
  factory DeleteQuoteBenefitRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteQuoteBenefitRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  DeleteQuoteBenefitRequest clone() =>
      DeleteQuoteBenefitRequest()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  DeleteQuoteBenefitRequest copyWith(
          void Function(DeleteQuoteBenefitRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteQuoteBenefitRequest))
          as DeleteQuoteBenefitRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteQuoteBenefitRequest create() => DeleteQuoteBenefitRequest._();
  DeleteQuoteBenefitRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteQuoteBenefitRequest> createRepeated() =>
      $pb.PbList<DeleteQuoteBenefitRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteQuoteBenefitRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteQuoteBenefitRequest>(create);
  static DeleteQuoteBenefitRequest? _defaultInstance;

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
