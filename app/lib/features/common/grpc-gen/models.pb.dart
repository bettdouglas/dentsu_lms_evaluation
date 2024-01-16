///
//  Generated code. Do not modify.
//  source: models.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'google/protobuf/timestamp.pb.dart' as $0;

class Agent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Agent',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'role')
    ..aOM<$0.Timestamp>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updatedAt',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  Agent._() : super();
  factory Agent({
    $core.int? id,
    $core.String? name,
    $core.String? email,
    $core.String? role,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (role != null) {
      _result.role = role;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    return _result;
  }
  factory Agent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Agent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Agent clone() => Agent()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Agent copyWith(void Function(Agent) updates) =>
      super.copyWith((message) => updates(message as Agent))
          as Agent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Agent create() => Agent._();
  Agent createEmptyInstance() => create();
  static $pb.PbList<Agent> createRepeated() => $pb.PbList<Agent>();
  @$core.pragma('dart2js:noInline')
  static Agent getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Agent>(create);
  static Agent? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get role => $_getSZ(3);
  @$pb.TagNumber(4)
  set role($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasRole() => $_has(3);
  @$pb.TagNumber(4)
  void clearRole() => clearField(4);

  @$pb.TagNumber(5)
  $0.Timestamp get createdAt => $_getN(4);
  @$pb.TagNumber(5)
  set createdAt($0.Timestamp v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCreatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearCreatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureCreatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $0.Timestamp get updatedAt => $_getN(5);
  @$pb.TagNumber(6)
  set updatedAt($0.Timestamp v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasUpdatedAt() => $_has(5);
  @$pb.TagNumber(6)
  void clearUpdatedAt() => clearField(6);
  @$pb.TagNumber(6)
  $0.Timestamp ensureUpdatedAt() => $_ensure(5);
}

class Lead extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Lead',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'name')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'email')
    ..aOM<$0.Timestamp>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updatedAt',
        subBuilder: $0.Timestamp.create)
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'location')
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'status')
    ..aOS(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'phone')
    ..aOS(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'accountNumber',
        protoName: 'accountNumber')
    ..aOS(
        10,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'customerType',
        protoName: 'customerType')
    ..aOM<$0.Timestamp>(
        11,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'appointmentDate',
        subBuilder: $0.Timestamp.create)
    ..hasRequiredFields = false;

  Lead._() : super();
  factory Lead({
    $core.int? id,
    $core.String? name,
    $core.String? email,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    $core.String? location,
    $core.String? status,
    $core.String? phone,
    $core.String? accountNumber,
    $core.String? customerType,
    $0.Timestamp? appointmentDate,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (name != null) {
      _result.name = name;
    }
    if (email != null) {
      _result.email = email;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (location != null) {
      _result.location = location;
    }
    if (status != null) {
      _result.status = status;
    }
    if (phone != null) {
      _result.phone = phone;
    }
    if (accountNumber != null) {
      _result.accountNumber = accountNumber;
    }
    if (customerType != null) {
      _result.customerType = customerType;
    }
    if (appointmentDate != null) {
      _result.appointmentDate = appointmentDate;
    }
    return _result;
  }
  factory Lead.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Lead.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Lead clone() => Lead()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Lead copyWith(void Function(Lead) updates) =>
      super.copyWith((message) => updates(message as Lead))
          as Lead; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Lead create() => Lead._();
  Lead createEmptyInstance() => create();
  static $pb.PbList<Lead> createRepeated() => $pb.PbList<Lead>();
  @$core.pragma('dart2js:noInline')
  static Lead getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Lead>(create);
  static Lead? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get email => $_getSZ(2);
  @$pb.TagNumber(3)
  set email($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasEmail() => $_has(2);
  @$pb.TagNumber(3)
  void clearEmail() => clearField(3);

  @$pb.TagNumber(4)
  $0.Timestamp get createdAt => $_getN(3);
  @$pb.TagNumber(4)
  set createdAt($0.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCreatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureCreatedAt() => $_ensure(3);

  @$pb.TagNumber(5)
  $0.Timestamp get updatedAt => $_getN(4);
  @$pb.TagNumber(5)
  set updatedAt($0.Timestamp v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasUpdatedAt() => $_has(4);
  @$pb.TagNumber(5)
  void clearUpdatedAt() => clearField(5);
  @$pb.TagNumber(5)
  $0.Timestamp ensureUpdatedAt() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.String get location => $_getSZ(5);
  @$pb.TagNumber(6)
  set location($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLocation() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocation() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get status => $_getSZ(6);
  @$pb.TagNumber(7)
  set status($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasStatus() => $_has(6);
  @$pb.TagNumber(7)
  void clearStatus() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get phone => $_getSZ(7);
  @$pb.TagNumber(8)
  set phone($core.String v) {
    $_setString(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPhone() => $_has(7);
  @$pb.TagNumber(8)
  void clearPhone() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get accountNumber => $_getSZ(8);
  @$pb.TagNumber(9)
  set accountNumber($core.String v) {
    $_setString(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasAccountNumber() => $_has(8);
  @$pb.TagNumber(9)
  void clearAccountNumber() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get customerType => $_getSZ(9);
  @$pb.TagNumber(10)
  set customerType($core.String v) {
    $_setString(9, v);
  }

  @$pb.TagNumber(10)
  $core.bool hasCustomerType() => $_has(9);
  @$pb.TagNumber(10)
  void clearCustomerType() => clearField(10);

  @$pb.TagNumber(11)
  $0.Timestamp get appointmentDate => $_getN(10);
  @$pb.TagNumber(11)
  set appointmentDate($0.Timestamp v) {
    setField(11, v);
  }

  @$pb.TagNumber(11)
  $core.bool hasAppointmentDate() => $_has(10);
  @$pb.TagNumber(11)
  void clearAppointmentDate() => clearField(11);
  @$pb.TagNumber(11)
  $0.Timestamp ensureAppointmentDate() => $_ensure(10);
}

class QuoteSetup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'QuoteSetup',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..aOS(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'ageBracket',
        protoName: 'ageBracket')
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'inPatientCoverLimit',
        protoName: 'inPatientCoverLimit')
    ..aOS(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spouseCovered',
        protoName: 'spouseCovered')
    ..aOS(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'numberOfChildren',
        protoName: 'numberOfChildren')
    ..aOS(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'coverChildren',
        protoName: 'coverChildren')
    ..aOS(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'spouseAgeBracket',
        protoName: 'spouseAgeBracket')
    ..hasRequiredFields = false;

  QuoteSetup._() : super();
  factory QuoteSetup({
    $core.String? ageBracket,
    $core.String? inPatientCoverLimit,
    $core.String? spouseCovered,
    $core.String? numberOfChildren,
    $core.String? coverChildren,
    $core.String? spouseAgeBracket,
  }) {
    final _result = create();
    if (ageBracket != null) {
      _result.ageBracket = ageBracket;
    }
    if (inPatientCoverLimit != null) {
      _result.inPatientCoverLimit = inPatientCoverLimit;
    }
    if (spouseCovered != null) {
      _result.spouseCovered = spouseCovered;
    }
    if (numberOfChildren != null) {
      _result.numberOfChildren = numberOfChildren;
    }
    if (coverChildren != null) {
      _result.coverChildren = coverChildren;
    }
    if (spouseAgeBracket != null) {
      _result.spouseAgeBracket = spouseAgeBracket;
    }
    return _result;
  }
  factory QuoteSetup.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QuoteSetup.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QuoteSetup clone() => QuoteSetup()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QuoteSetup copyWith(void Function(QuoteSetup) updates) =>
      super.copyWith((message) => updates(message as QuoteSetup))
          as QuoteSetup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuoteSetup create() => QuoteSetup._();
  QuoteSetup createEmptyInstance() => create();
  static $pb.PbList<QuoteSetup> createRepeated() => $pb.PbList<QuoteSetup>();
  @$core.pragma('dart2js:noInline')
  static QuoteSetup getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QuoteSetup>(create);
  static QuoteSetup? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get ageBracket => $_getSZ(0);
  @$pb.TagNumber(1)
  set ageBracket($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAgeBracket() => $_has(0);
  @$pb.TagNumber(1)
  void clearAgeBracket() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get inPatientCoverLimit => $_getSZ(1);
  @$pb.TagNumber(2)
  set inPatientCoverLimit($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasInPatientCoverLimit() => $_has(1);
  @$pb.TagNumber(2)
  void clearInPatientCoverLimit() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get spouseCovered => $_getSZ(2);
  @$pb.TagNumber(3)
  set spouseCovered($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasSpouseCovered() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpouseCovered() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get numberOfChildren => $_getSZ(3);
  @$pb.TagNumber(4)
  set numberOfChildren($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasNumberOfChildren() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumberOfChildren() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get coverChildren => $_getSZ(4);
  @$pb.TagNumber(5)
  set coverChildren($core.String v) {
    $_setString(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCoverChildren() => $_has(4);
  @$pb.TagNumber(5)
  void clearCoverChildren() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get spouseAgeBracket => $_getSZ(5);
  @$pb.TagNumber(6)
  set spouseAgeBracket($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasSpouseAgeBracket() => $_has(5);
  @$pb.TagNumber(6)
  void clearSpouseAgeBracket() => clearField(6);
}

class QuoteBenefit extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'QuoteBenefit',
      package: const $pb.PackageName(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'lms'),
      createEmptyInstance: create)
    ..aOB(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'inPatient',
        protoName: 'inPatient')
    ..aOB(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'outPatient',
        protoName: 'outPatient')
    ..aOB(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'noCoPayment',
        protoName: 'noCoPayment')
    ..aOB(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'dental')
    ..aOB(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'optical')
    ..aOB(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'maternity')
    ..aOB(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lastExpense',
        protoName: 'lastExpense')
    ..aOB(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'personalAccident',
        protoName: 'personalAccident')
    ..aOB(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'covid19Cover',
        protoName: 'covid19Cover')
    ..hasRequiredFields = false;

  QuoteBenefit._() : super();
  factory QuoteBenefit({
    $core.bool? inPatient,
    $core.bool? outPatient,
    $core.bool? noCoPayment,
    $core.bool? dental,
    $core.bool? optical,
    $core.bool? maternity,
    $core.bool? lastExpense,
    $core.bool? personalAccident,
    $core.bool? covid19Cover,
  }) {
    final _result = create();
    if (inPatient != null) {
      _result.inPatient = inPatient;
    }
    if (outPatient != null) {
      _result.outPatient = outPatient;
    }
    if (noCoPayment != null) {
      _result.noCoPayment = noCoPayment;
    }
    if (dental != null) {
      _result.dental = dental;
    }
    if (optical != null) {
      _result.optical = optical;
    }
    if (maternity != null) {
      _result.maternity = maternity;
    }
    if (lastExpense != null) {
      _result.lastExpense = lastExpense;
    }
    if (personalAccident != null) {
      _result.personalAccident = personalAccident;
    }
    if (covid19Cover != null) {
      _result.covid19Cover = covid19Cover;
    }
    return _result;
  }
  factory QuoteBenefit.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QuoteBenefit.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  QuoteBenefit clone() => QuoteBenefit()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  QuoteBenefit copyWith(void Function(QuoteBenefit) updates) =>
      super.copyWith((message) => updates(message as QuoteBenefit))
          as QuoteBenefit; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QuoteBenefit create() => QuoteBenefit._();
  QuoteBenefit createEmptyInstance() => create();
  static $pb.PbList<QuoteBenefit> createRepeated() =>
      $pb.PbList<QuoteBenefit>();
  @$core.pragma('dart2js:noInline')
  static QuoteBenefit getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<QuoteBenefit>(create);
  static QuoteBenefit? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get inPatient => $_getBF(0);
  @$pb.TagNumber(1)
  set inPatient($core.bool v) {
    $_setBool(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasInPatient() => $_has(0);
  @$pb.TagNumber(1)
  void clearInPatient() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get outPatient => $_getBF(1);
  @$pb.TagNumber(2)
  set outPatient($core.bool v) {
    $_setBool(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasOutPatient() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutPatient() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get noCoPayment => $_getBF(2);
  @$pb.TagNumber(3)
  set noCoPayment($core.bool v) {
    $_setBool(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasNoCoPayment() => $_has(2);
  @$pb.TagNumber(3)
  void clearNoCoPayment() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get dental => $_getBF(3);
  @$pb.TagNumber(4)
  set dental($core.bool v) {
    $_setBool(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasDental() => $_has(3);
  @$pb.TagNumber(4)
  void clearDental() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get optical => $_getBF(4);
  @$pb.TagNumber(5)
  set optical($core.bool v) {
    $_setBool(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasOptical() => $_has(4);
  @$pb.TagNumber(5)
  void clearOptical() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get maternity => $_getBF(5);
  @$pb.TagNumber(6)
  set maternity($core.bool v) {
    $_setBool(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasMaternity() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaternity() => clearField(6);

  @$pb.TagNumber(7)
  $core.bool get lastExpense => $_getBF(6);
  @$pb.TagNumber(7)
  set lastExpense($core.bool v) {
    $_setBool(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasLastExpense() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastExpense() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get personalAccident => $_getBF(7);
  @$pb.TagNumber(8)
  set personalAccident($core.bool v) {
    $_setBool(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasPersonalAccident() => $_has(7);
  @$pb.TagNumber(8)
  void clearPersonalAccident() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get covid19Cover => $_getBF(8);
  @$pb.TagNumber(9)
  set covid19Cover($core.bool v) {
    $_setBool(8, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasCovid19Cover() => $_has(8);
  @$pb.TagNumber(9)
  void clearCovid19Cover() => clearField(9);
}

class Quote extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : 'Quote',
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
    ..aOS(
        2,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'quoteId')
    ..aOM<$0.Timestamp>(
        3,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'createdAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<$0.Timestamp>(
        4,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'updatedAt',
        subBuilder: $0.Timestamp.create)
    ..aOM<Agent>(
        5,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'sourceAgent',
        subBuilder: Agent.create)
    ..aOM<Lead>(
        6,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'lead',
        subBuilder: Lead.create)
    ..aOS(
        7,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'businessUnit',
        protoName: 'businessUnit')
    ..aOM<QuoteSetup>(
        8,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'setup',
        subBuilder: QuoteSetup.create)
    ..aOM<QuoteBenefit>(
        9,
        const $core.bool.fromEnvironment('protobuf.omit_field_names')
            ? ''
            : 'benefits',
        subBuilder: QuoteBenefit.create)
    ..hasRequiredFields = false;

  Quote._() : super();
  factory Quote({
    $core.int? id,
    $core.String? quoteId,
    $0.Timestamp? createdAt,
    $0.Timestamp? updatedAt,
    Agent? sourceAgent,
    Lead? lead,
    $core.String? businessUnit,
    QuoteSetup? setup,
    QuoteBenefit? benefits,
  }) {
    final _result = create();
    if (id != null) {
      _result.id = id;
    }
    if (quoteId != null) {
      _result.quoteId = quoteId;
    }
    if (createdAt != null) {
      _result.createdAt = createdAt;
    }
    if (updatedAt != null) {
      _result.updatedAt = updatedAt;
    }
    if (sourceAgent != null) {
      _result.sourceAgent = sourceAgent;
    }
    if (lead != null) {
      _result.lead = lead;
    }
    if (businessUnit != null) {
      _result.businessUnit = businessUnit;
    }
    if (setup != null) {
      _result.setup = setup;
    }
    if (benefits != null) {
      _result.benefits = benefits;
    }
    return _result;
  }
  factory Quote.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Quote.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
      'Will be removed in next major version')
  Quote clone() => Quote()..mergeFromMessage(this);
  @$core.Deprecated('Using this can add significant overhead to your binary. '
      'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
      'Will be removed in next major version')
  Quote copyWith(void Function(Quote) updates) =>
      super.copyWith((message) => updates(message as Quote))
          as Quote; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Quote create() => Quote._();
  Quote createEmptyInstance() => create();
  static $pb.PbList<Quote> createRepeated() => $pb.PbList<Quote>();
  @$core.pragma('dart2js:noInline')
  static Quote getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Quote>(create);
  static Quote? _defaultInstance;

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

  @$pb.TagNumber(2)
  $core.String get quoteId => $_getSZ(1);
  @$pb.TagNumber(2)
  set quoteId($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasQuoteId() => $_has(1);
  @$pb.TagNumber(2)
  void clearQuoteId() => clearField(2);

  @$pb.TagNumber(3)
  $0.Timestamp get createdAt => $_getN(2);
  @$pb.TagNumber(3)
  set createdAt($0.Timestamp v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasCreatedAt() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreatedAt() => clearField(3);
  @$pb.TagNumber(3)
  $0.Timestamp ensureCreatedAt() => $_ensure(2);

  @$pb.TagNumber(4)
  $0.Timestamp get updatedAt => $_getN(3);
  @$pb.TagNumber(4)
  set updatedAt($0.Timestamp v) {
    setField(4, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasUpdatedAt() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpdatedAt() => clearField(4);
  @$pb.TagNumber(4)
  $0.Timestamp ensureUpdatedAt() => $_ensure(3);

  @$pb.TagNumber(5)
  Agent get sourceAgent => $_getN(4);
  @$pb.TagNumber(5)
  set sourceAgent(Agent v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasSourceAgent() => $_has(4);
  @$pb.TagNumber(5)
  void clearSourceAgent() => clearField(5);
  @$pb.TagNumber(5)
  Agent ensureSourceAgent() => $_ensure(4);

  @$pb.TagNumber(6)
  Lead get lead => $_getN(5);
  @$pb.TagNumber(6)
  set lead(Lead v) {
    setField(6, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasLead() => $_has(5);
  @$pb.TagNumber(6)
  void clearLead() => clearField(6);
  @$pb.TagNumber(6)
  Lead ensureLead() => $_ensure(5);

  @$pb.TagNumber(7)
  $core.String get businessUnit => $_getSZ(6);
  @$pb.TagNumber(7)
  set businessUnit($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasBusinessUnit() => $_has(6);
  @$pb.TagNumber(7)
  void clearBusinessUnit() => clearField(7);

  @$pb.TagNumber(8)
  QuoteSetup get setup => $_getN(7);
  @$pb.TagNumber(8)
  set setup(QuoteSetup v) {
    setField(8, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasSetup() => $_has(7);
  @$pb.TagNumber(8)
  void clearSetup() => clearField(8);
  @$pb.TagNumber(8)
  QuoteSetup ensureSetup() => $_ensure(7);

  @$pb.TagNumber(9)
  QuoteBenefit get benefits => $_getN(8);
  @$pb.TagNumber(9)
  set benefits(QuoteBenefit v) {
    setField(9, v);
  }

  @$pb.TagNumber(9)
  $core.bool hasBenefits() => $_has(8);
  @$pb.TagNumber(9)
  void clearBenefits() => clearField(9);
  @$pb.TagNumber(9)
  QuoteBenefit ensureBenefits() => $_ensure(8);
}
