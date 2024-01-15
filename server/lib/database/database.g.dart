// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $AgentsTable extends Agents with TableInfo<$AgentsTable, Agent> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AgentsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _roleMeta = const VerificationMeta('role');
  @override
  late final GeneratedColumn<String> role = GeneratedColumn<String>(
      'role', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, name, email, password, role];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'agents';
  @override
  VerificationContext validateIntegrity(Insertable<Agent> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('role')) {
      context.handle(
          _roleMeta, role.isAcceptableOrUnknown(data['role']!, _roleMeta));
    } else if (isInserting) {
      context.missing(_roleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Agent map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Agent(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      role: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}role'])!,
    );
  }

  @override
  $AgentsTable createAlias(String alias) {
    return $AgentsTable(attachedDatabase, alias);
  }
}

class Agent extends DataClass implements Insertable<Agent> {
  /// the id of the row
  final int id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String name;
  final String email;
  final String password;
  final String role;
  const Agent(
      {required this.id,
      required this.createdAt,
      this.updatedAt,
      required this.name,
      required this.email,
      required this.password,
      required this.role});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    map['role'] = Variable<String>(role);
    return map;
  }

  AgentsCompanion toCompanion(bool nullToAbsent) {
    return AgentsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      name: Value(name),
      email: Value(email),
      password: Value(password),
      role: Value(role),
    );
  }

  factory Agent.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Agent(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      role: serializer.fromJson<String>(json['role']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'role': serializer.toJson<String>(role),
    };
  }

  Agent copyWith(
          {int? id,
          DateTime? createdAt,
          Value<DateTime?> updatedAt = const Value.absent(),
          String? name,
          String? email,
          String? password,
          String? role}) =>
      Agent(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        name: name ?? this.name,
        email: email ?? this.email,
        password: password ?? this.password,
        role: role ?? this.role,
      );
  @override
  String toString() {
    return (StringBuffer('Agent(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('role: $role')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, name, email, password, role);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Agent &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.name == this.name &&
          other.email == this.email &&
          other.password == this.password &&
          other.role == this.role);
}

class AgentsCompanion extends UpdateCompanion<Agent> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<String> name;
  final Value<String> email;
  final Value<String> password;
  final Value<String> role;
  const AgentsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.role = const Value.absent(),
  });
  AgentsCompanion.insert({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required String name,
    required String email,
    required String password,
    required String role,
  })  : name = Value(name),
        email = Value(email),
        password = Value(password),
        role = Value(role);
  static Insertable<Agent> custom({
    Expression<int>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? password,
    Expression<String>? role,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (role != null) 'role': role,
    });
  }

  AgentsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<String>? name,
      Value<String>? email,
      Value<String>? password,
      Value<String>? role}) {
    return AgentsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      name: name ?? this.name,
      email: email ?? this.email,
      password: password ?? this.password,
      role: role ?? this.role,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (role.present) {
      map['role'] = Variable<String>(role.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AgentsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('role: $role')
          ..write(')'))
        .toString();
  }
}

class $LeadsTable extends Leads with TableInfo<$LeadsTable, Lead> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LeadsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _locationMeta =
      const VerificationMeta('location');
  @override
  late final GeneratedColumn<String> location = GeneratedColumn<String>(
      'location', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _appointmentDateMeta =
      const VerificationMeta('appointmentDate');
  @override
  late final GeneratedColumn<DateTime> appointmentDate =
      GeneratedColumn<DateTime>('appointment_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _isCancelledMeta =
      const VerificationMeta('isCancelled');
  @override
  late final GeneratedColumn<bool> isCancelled = GeneratedColumn<bool>(
      'is_cancelled', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_cancelled" IN (0, 1))'));
  static const VerificationMeta _isContactedMeta =
      const VerificationMeta('isContacted');
  @override
  late final GeneratedColumn<bool> isContacted = GeneratedColumn<bool>(
      'is_contacted', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("is_contacted" IN (0, 1))'));
  static const VerificationMeta _sourceAgentIdMeta =
      const VerificationMeta('sourceAgentId');
  @override
  late final GeneratedColumn<int> sourceAgentId = GeneratedColumn<int>(
      'source_agent_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES agents (id)'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        name,
        email,
        location,
        appointmentDate,
        isCancelled,
        isContacted,
        sourceAgentId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'leads';
  @override
  VerificationContext validateIntegrity(Insertable<Lead> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    if (data.containsKey('appointment_date')) {
      context.handle(
          _appointmentDateMeta,
          appointmentDate.isAcceptableOrUnknown(
              data['appointment_date']!, _appointmentDateMeta));
    }
    if (data.containsKey('is_cancelled')) {
      context.handle(
          _isCancelledMeta,
          isCancelled.isAcceptableOrUnknown(
              data['is_cancelled']!, _isCancelledMeta));
    }
    if (data.containsKey('is_contacted')) {
      context.handle(
          _isContactedMeta,
          isContacted.isAcceptableOrUnknown(
              data['is_contacted']!, _isContactedMeta));
    }
    if (data.containsKey('source_agent_id')) {
      context.handle(
          _sourceAgentIdMeta,
          sourceAgentId.isAcceptableOrUnknown(
              data['source_agent_id']!, _sourceAgentIdMeta));
    } else if (isInserting) {
      context.missing(_sourceAgentIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Lead map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Lead(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      location: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}location'])!,
      appointmentDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}appointment_date']),
      isCancelled: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_cancelled']),
      isContacted: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_contacted']),
      sourceAgentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}source_agent_id'])!,
    );
  }

  @override
  $LeadsTable createAlias(String alias) {
    return $LeadsTable(attachedDatabase, alias);
  }
}

class Lead extends DataClass implements Insertable<Lead> {
  /// the id of the row
  final int id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String name;
  final String email;
  final String location;
  final DateTime? appointmentDate;
  final bool? isCancelled;
  final bool? isContacted;
  final int sourceAgentId;
  const Lead(
      {required this.id,
      required this.createdAt,
      this.updatedAt,
      required this.name,
      required this.email,
      required this.location,
      this.appointmentDate,
      this.isCancelled,
      this.isContacted,
      required this.sourceAgentId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['location'] = Variable<String>(location);
    if (!nullToAbsent || appointmentDate != null) {
      map['appointment_date'] = Variable<DateTime>(appointmentDate);
    }
    if (!nullToAbsent || isCancelled != null) {
      map['is_cancelled'] = Variable<bool>(isCancelled);
    }
    if (!nullToAbsent || isContacted != null) {
      map['is_contacted'] = Variable<bool>(isContacted);
    }
    map['source_agent_id'] = Variable<int>(sourceAgentId);
    return map;
  }

  LeadsCompanion toCompanion(bool nullToAbsent) {
    return LeadsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      name: Value(name),
      email: Value(email),
      location: Value(location),
      appointmentDate: appointmentDate == null && nullToAbsent
          ? const Value.absent()
          : Value(appointmentDate),
      isCancelled: isCancelled == null && nullToAbsent
          ? const Value.absent()
          : Value(isCancelled),
      isContacted: isContacted == null && nullToAbsent
          ? const Value.absent()
          : Value(isContacted),
      sourceAgentId: Value(sourceAgentId),
    );
  }

  factory Lead.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Lead(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      location: serializer.fromJson<String>(json['location']),
      appointmentDate: serializer.fromJson<DateTime?>(json['appointmentDate']),
      isCancelled: serializer.fromJson<bool?>(json['isCancelled']),
      isContacted: serializer.fromJson<bool?>(json['isContacted']),
      sourceAgentId: serializer.fromJson<int>(json['sourceAgentId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'location': serializer.toJson<String>(location),
      'appointmentDate': serializer.toJson<DateTime?>(appointmentDate),
      'isCancelled': serializer.toJson<bool?>(isCancelled),
      'isContacted': serializer.toJson<bool?>(isContacted),
      'sourceAgentId': serializer.toJson<int>(sourceAgentId),
    };
  }

  Lead copyWith(
          {int? id,
          DateTime? createdAt,
          Value<DateTime?> updatedAt = const Value.absent(),
          String? name,
          String? email,
          String? location,
          Value<DateTime?> appointmentDate = const Value.absent(),
          Value<bool?> isCancelled = const Value.absent(),
          Value<bool?> isContacted = const Value.absent(),
          int? sourceAgentId}) =>
      Lead(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        name: name ?? this.name,
        email: email ?? this.email,
        location: location ?? this.location,
        appointmentDate: appointmentDate.present
            ? appointmentDate.value
            : this.appointmentDate,
        isCancelled: isCancelled.present ? isCancelled.value : this.isCancelled,
        isContacted: isContacted.present ? isContacted.value : this.isContacted,
        sourceAgentId: sourceAgentId ?? this.sourceAgentId,
      );
  @override
  String toString() {
    return (StringBuffer('Lead(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('location: $location, ')
          ..write('appointmentDate: $appointmentDate, ')
          ..write('isCancelled: $isCancelled, ')
          ..write('isContacted: $isContacted, ')
          ..write('sourceAgentId: $sourceAgentId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, createdAt, updatedAt, name, email,
      location, appointmentDate, isCancelled, isContacted, sourceAgentId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Lead &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.name == this.name &&
          other.email == this.email &&
          other.location == this.location &&
          other.appointmentDate == this.appointmentDate &&
          other.isCancelled == this.isCancelled &&
          other.isContacted == this.isContacted &&
          other.sourceAgentId == this.sourceAgentId);
}

class LeadsCompanion extends UpdateCompanion<Lead> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<String> name;
  final Value<String> email;
  final Value<String> location;
  final Value<DateTime?> appointmentDate;
  final Value<bool?> isCancelled;
  final Value<bool?> isContacted;
  final Value<int> sourceAgentId;
  const LeadsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.location = const Value.absent(),
    this.appointmentDate = const Value.absent(),
    this.isCancelled = const Value.absent(),
    this.isContacted = const Value.absent(),
    this.sourceAgentId = const Value.absent(),
  });
  LeadsCompanion.insert({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required String name,
    required String email,
    required String location,
    this.appointmentDate = const Value.absent(),
    this.isCancelled = const Value.absent(),
    this.isContacted = const Value.absent(),
    required int sourceAgentId,
  })  : name = Value(name),
        email = Value(email),
        location = Value(location),
        sourceAgentId = Value(sourceAgentId);
  static Insertable<Lead> custom({
    Expression<int>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? location,
    Expression<DateTime>? appointmentDate,
    Expression<bool>? isCancelled,
    Expression<bool>? isContacted,
    Expression<int>? sourceAgentId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (location != null) 'location': location,
      if (appointmentDate != null) 'appointment_date': appointmentDate,
      if (isCancelled != null) 'is_cancelled': isCancelled,
      if (isContacted != null) 'is_contacted': isContacted,
      if (sourceAgentId != null) 'source_agent_id': sourceAgentId,
    });
  }

  LeadsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<String>? name,
      Value<String>? email,
      Value<String>? location,
      Value<DateTime?>? appointmentDate,
      Value<bool?>? isCancelled,
      Value<bool?>? isContacted,
      Value<int>? sourceAgentId}) {
    return LeadsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      name: name ?? this.name,
      email: email ?? this.email,
      location: location ?? this.location,
      appointmentDate: appointmentDate ?? this.appointmentDate,
      isCancelled: isCancelled ?? this.isCancelled,
      isContacted: isContacted ?? this.isContacted,
      sourceAgentId: sourceAgentId ?? this.sourceAgentId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    if (appointmentDate.present) {
      map['appointment_date'] = Variable<DateTime>(appointmentDate.value);
    }
    if (isCancelled.present) {
      map['is_cancelled'] = Variable<bool>(isCancelled.value);
    }
    if (isContacted.present) {
      map['is_contacted'] = Variable<bool>(isContacted.value);
    }
    if (sourceAgentId.present) {
      map['source_agent_id'] = Variable<int>(sourceAgentId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LeadsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('location: $location, ')
          ..write('appointmentDate: $appointmentDate, ')
          ..write('isCancelled: $isCancelled, ')
          ..write('isContacted: $isContacted, ')
          ..write('sourceAgentId: $sourceAgentId')
          ..write(')'))
        .toString();
  }
}

class $QuotesTable extends Quotes with TableInfo<$QuotesTable, Quote> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _quoteIdMeta =
      const VerificationMeta('quoteId');
  @override
  late final GeneratedColumn<String> quoteId = GeneratedColumn<String>(
      'quote_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: Constant(Slugid.v4().uuid()));
  static const VerificationMeta _leadIdMeta = const VerificationMeta('leadId');
  @override
  late final GeneratedColumn<int> leadId = GeneratedColumn<int>(
      'lead_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES leads (id)'));
  static const VerificationMeta _businessUnitMeta =
      const VerificationMeta('businessUnit');
  @override
  late final GeneratedColumn<String> businessUnit = GeneratedColumn<String>(
      'business_unit', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, updatedAt, quoteId, leadId, businessUnit];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quotes';
  @override
  VerificationContext validateIntegrity(Insertable<Quote> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('quote_id')) {
      context.handle(_quoteIdMeta,
          quoteId.isAcceptableOrUnknown(data['quote_id']!, _quoteIdMeta));
    }
    if (data.containsKey('lead_id')) {
      context.handle(_leadIdMeta,
          leadId.isAcceptableOrUnknown(data['lead_id']!, _leadIdMeta));
    } else if (isInserting) {
      context.missing(_leadIdMeta);
    }
    if (data.containsKey('business_unit')) {
      context.handle(
          _businessUnitMeta,
          businessUnit.isAcceptableOrUnknown(
              data['business_unit']!, _businessUnitMeta));
    } else if (isInserting) {
      context.missing(_businessUnitMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Quote map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Quote(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      quoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}quote_id'])!,
      leadId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}lead_id'])!,
      businessUnit: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}business_unit'])!,
    );
  }

  @override
  $QuotesTable createAlias(String alias) {
    return $QuotesTable(attachedDatabase, alias);
  }
}

class Quote extends DataClass implements Insertable<Quote> {
  /// the id of the row
  final int id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final String quoteId;
  final int leadId;
  final String businessUnit;
  const Quote(
      {required this.id,
      required this.createdAt,
      this.updatedAt,
      required this.quoteId,
      required this.leadId,
      required this.businessUnit});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    map['quote_id'] = Variable<String>(quoteId);
    map['lead_id'] = Variable<int>(leadId);
    map['business_unit'] = Variable<String>(businessUnit);
    return map;
  }

  QuotesCompanion toCompanion(bool nullToAbsent) {
    return QuotesCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      quoteId: Value(quoteId),
      leadId: Value(leadId),
      businessUnit: Value(businessUnit),
    );
  }

  factory Quote.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Quote(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      quoteId: serializer.fromJson<String>(json['quoteId']),
      leadId: serializer.fromJson<int>(json['leadId']),
      businessUnit: serializer.fromJson<String>(json['businessUnit']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'quoteId': serializer.toJson<String>(quoteId),
      'leadId': serializer.toJson<int>(leadId),
      'businessUnit': serializer.toJson<String>(businessUnit),
    };
  }

  Quote copyWith(
          {int? id,
          DateTime? createdAt,
          Value<DateTime?> updatedAt = const Value.absent(),
          String? quoteId,
          int? leadId,
          String? businessUnit}) =>
      Quote(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        quoteId: quoteId ?? this.quoteId,
        leadId: leadId ?? this.leadId,
        businessUnit: businessUnit ?? this.businessUnit,
      );
  @override
  String toString() {
    return (StringBuffer('Quote(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('quoteId: $quoteId, ')
          ..write('leadId: $leadId, ')
          ..write('businessUnit: $businessUnit')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, createdAt, updatedAt, quoteId, leadId, businessUnit);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Quote &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.quoteId == this.quoteId &&
          other.leadId == this.leadId &&
          other.businessUnit == this.businessUnit);
}

class QuotesCompanion extends UpdateCompanion<Quote> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<String> quoteId;
  final Value<int> leadId;
  final Value<String> businessUnit;
  const QuotesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.quoteId = const Value.absent(),
    this.leadId = const Value.absent(),
    this.businessUnit = const Value.absent(),
  });
  QuotesCompanion.insert({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.quoteId = const Value.absent(),
    required int leadId,
    required String businessUnit,
  })  : leadId = Value(leadId),
        businessUnit = Value(businessUnit);
  static Insertable<Quote> custom({
    Expression<int>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<String>? quoteId,
    Expression<int>? leadId,
    Expression<String>? businessUnit,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (quoteId != null) 'quote_id': quoteId,
      if (leadId != null) 'lead_id': leadId,
      if (businessUnit != null) 'business_unit': businessUnit,
    });
  }

  QuotesCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<String>? quoteId,
      Value<int>? leadId,
      Value<String>? businessUnit}) {
    return QuotesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      quoteId: quoteId ?? this.quoteId,
      leadId: leadId ?? this.leadId,
      businessUnit: businessUnit ?? this.businessUnit,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (quoteId.present) {
      map['quote_id'] = Variable<String>(quoteId.value);
    }
    if (leadId.present) {
      map['lead_id'] = Variable<int>(leadId.value);
    }
    if (businessUnit.present) {
      map['business_unit'] = Variable<String>(businessUnit.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuotesCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('quoteId: $quoteId, ')
          ..write('leadId: $leadId, ')
          ..write('businessUnit: $businessUnit')
          ..write(')'))
        .toString();
  }
}

class $QuoteSetupsTable extends QuoteSetups
    with TableInfo<$QuoteSetupsTable, QuoteSetup> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuoteSetupsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _quoteIdMeta =
      const VerificationMeta('quoteId');
  @override
  late final GeneratedColumn<int> quoteId = GeneratedColumn<int>(
      'quote_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('UNIQUE REFERENCES quotes (id)'));
  static const VerificationMeta _ageBracketMeta =
      const VerificationMeta('ageBracket');
  @override
  late final GeneratedColumn<String> ageBracket = GeneratedColumn<String>(
      'age_bracket', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inPatientCoverLimitMeta =
      const VerificationMeta('inPatientCoverLimit');
  @override
  late final GeneratedColumn<String> inPatientCoverLimit =
      GeneratedColumn<String>('in_patient_cover_limit', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _spouseCoveredMeta =
      const VerificationMeta('spouseCovered');
  @override
  late final GeneratedColumn<String> spouseCovered = GeneratedColumn<String>(
      'spouse_covered', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _numberOfChildrenMeta =
      const VerificationMeta('numberOfChildren');
  @override
  late final GeneratedColumn<String> numberOfChildren = GeneratedColumn<String>(
      'number_of_children', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _childrenCoveredMeta =
      const VerificationMeta('childrenCovered');
  @override
  late final GeneratedColumn<String> childrenCovered = GeneratedColumn<String>(
      'children_covered', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _coverChildrenMeta =
      const VerificationMeta('coverChildren');
  @override
  late final GeneratedColumn<String> coverChildren = GeneratedColumn<String>(
      'cover_children', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _spouseAgeBracketMeta =
      const VerificationMeta('spouseAgeBracket');
  @override
  late final GeneratedColumn<String> spouseAgeBracket = GeneratedColumn<String>(
      'spouse_age_bracket', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        quoteId,
        ageBracket,
        inPatientCoverLimit,
        spouseCovered,
        numberOfChildren,
        childrenCovered,
        coverChildren,
        spouseAgeBracket
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quote_setups';
  @override
  VerificationContext validateIntegrity(Insertable<QuoteSetup> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('quote_id')) {
      context.handle(_quoteIdMeta,
          quoteId.isAcceptableOrUnknown(data['quote_id']!, _quoteIdMeta));
    } else if (isInserting) {
      context.missing(_quoteIdMeta);
    }
    if (data.containsKey('age_bracket')) {
      context.handle(
          _ageBracketMeta,
          ageBracket.isAcceptableOrUnknown(
              data['age_bracket']!, _ageBracketMeta));
    }
    if (data.containsKey('in_patient_cover_limit')) {
      context.handle(
          _inPatientCoverLimitMeta,
          inPatientCoverLimit.isAcceptableOrUnknown(
              data['in_patient_cover_limit']!, _inPatientCoverLimitMeta));
    }
    if (data.containsKey('spouse_covered')) {
      context.handle(
          _spouseCoveredMeta,
          spouseCovered.isAcceptableOrUnknown(
              data['spouse_covered']!, _spouseCoveredMeta));
    }
    if (data.containsKey('number_of_children')) {
      context.handle(
          _numberOfChildrenMeta,
          numberOfChildren.isAcceptableOrUnknown(
              data['number_of_children']!, _numberOfChildrenMeta));
    }
    if (data.containsKey('children_covered')) {
      context.handle(
          _childrenCoveredMeta,
          childrenCovered.isAcceptableOrUnknown(
              data['children_covered']!, _childrenCoveredMeta));
    }
    if (data.containsKey('cover_children')) {
      context.handle(
          _coverChildrenMeta,
          coverChildren.isAcceptableOrUnknown(
              data['cover_children']!, _coverChildrenMeta));
    }
    if (data.containsKey('spouse_age_bracket')) {
      context.handle(
          _spouseAgeBracketMeta,
          spouseAgeBracket.isAcceptableOrUnknown(
              data['spouse_age_bracket']!, _spouseAgeBracketMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuoteSetup map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuoteSetup(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      quoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quote_id'])!,
      ageBracket: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}age_bracket']),
      inPatientCoverLimit: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}in_patient_cover_limit']),
      spouseCovered: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}spouse_covered']),
      numberOfChildren: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}number_of_children']),
      childrenCovered: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}children_covered']),
      coverChildren: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cover_children']),
      spouseAgeBracket: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}spouse_age_bracket']),
    );
  }

  @override
  $QuoteSetupsTable createAlias(String alias) {
    return $QuoteSetupsTable(attachedDatabase, alias);
  }
}

class QuoteSetup extends DataClass implements Insertable<QuoteSetup> {
  /// the id of the row
  final int id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final int quoteId;
  final String? ageBracket;
  final String? inPatientCoverLimit;
  final String? spouseCovered;
  final String? numberOfChildren;
  final String? childrenCovered;
  final String? coverChildren;
  final String? spouseAgeBracket;
  const QuoteSetup(
      {required this.id,
      required this.createdAt,
      this.updatedAt,
      required this.quoteId,
      this.ageBracket,
      this.inPatientCoverLimit,
      this.spouseCovered,
      this.numberOfChildren,
      this.childrenCovered,
      this.coverChildren,
      this.spouseAgeBracket});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    map['quote_id'] = Variable<int>(quoteId);
    if (!nullToAbsent || ageBracket != null) {
      map['age_bracket'] = Variable<String>(ageBracket);
    }
    if (!nullToAbsent || inPatientCoverLimit != null) {
      map['in_patient_cover_limit'] = Variable<String>(inPatientCoverLimit);
    }
    if (!nullToAbsent || spouseCovered != null) {
      map['spouse_covered'] = Variable<String>(spouseCovered);
    }
    if (!nullToAbsent || numberOfChildren != null) {
      map['number_of_children'] = Variable<String>(numberOfChildren);
    }
    if (!nullToAbsent || childrenCovered != null) {
      map['children_covered'] = Variable<String>(childrenCovered);
    }
    if (!nullToAbsent || coverChildren != null) {
      map['cover_children'] = Variable<String>(coverChildren);
    }
    if (!nullToAbsent || spouseAgeBracket != null) {
      map['spouse_age_bracket'] = Variable<String>(spouseAgeBracket);
    }
    return map;
  }

  QuoteSetupsCompanion toCompanion(bool nullToAbsent) {
    return QuoteSetupsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      quoteId: Value(quoteId),
      ageBracket: ageBracket == null && nullToAbsent
          ? const Value.absent()
          : Value(ageBracket),
      inPatientCoverLimit: inPatientCoverLimit == null && nullToAbsent
          ? const Value.absent()
          : Value(inPatientCoverLimit),
      spouseCovered: spouseCovered == null && nullToAbsent
          ? const Value.absent()
          : Value(spouseCovered),
      numberOfChildren: numberOfChildren == null && nullToAbsent
          ? const Value.absent()
          : Value(numberOfChildren),
      childrenCovered: childrenCovered == null && nullToAbsent
          ? const Value.absent()
          : Value(childrenCovered),
      coverChildren: coverChildren == null && nullToAbsent
          ? const Value.absent()
          : Value(coverChildren),
      spouseAgeBracket: spouseAgeBracket == null && nullToAbsent
          ? const Value.absent()
          : Value(spouseAgeBracket),
    );
  }

  factory QuoteSetup.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuoteSetup(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      quoteId: serializer.fromJson<int>(json['quoteId']),
      ageBracket: serializer.fromJson<String?>(json['ageBracket']),
      inPatientCoverLimit:
          serializer.fromJson<String?>(json['inPatientCoverLimit']),
      spouseCovered: serializer.fromJson<String?>(json['spouseCovered']),
      numberOfChildren: serializer.fromJson<String?>(json['numberOfChildren']),
      childrenCovered: serializer.fromJson<String?>(json['childrenCovered']),
      coverChildren: serializer.fromJson<String?>(json['coverChildren']),
      spouseAgeBracket: serializer.fromJson<String?>(json['spouseAgeBracket']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'quoteId': serializer.toJson<int>(quoteId),
      'ageBracket': serializer.toJson<String?>(ageBracket),
      'inPatientCoverLimit': serializer.toJson<String?>(inPatientCoverLimit),
      'spouseCovered': serializer.toJson<String?>(spouseCovered),
      'numberOfChildren': serializer.toJson<String?>(numberOfChildren),
      'childrenCovered': serializer.toJson<String?>(childrenCovered),
      'coverChildren': serializer.toJson<String?>(coverChildren),
      'spouseAgeBracket': serializer.toJson<String?>(spouseAgeBracket),
    };
  }

  QuoteSetup copyWith(
          {int? id,
          DateTime? createdAt,
          Value<DateTime?> updatedAt = const Value.absent(),
          int? quoteId,
          Value<String?> ageBracket = const Value.absent(),
          Value<String?> inPatientCoverLimit = const Value.absent(),
          Value<String?> spouseCovered = const Value.absent(),
          Value<String?> numberOfChildren = const Value.absent(),
          Value<String?> childrenCovered = const Value.absent(),
          Value<String?> coverChildren = const Value.absent(),
          Value<String?> spouseAgeBracket = const Value.absent()}) =>
      QuoteSetup(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        quoteId: quoteId ?? this.quoteId,
        ageBracket: ageBracket.present ? ageBracket.value : this.ageBracket,
        inPatientCoverLimit: inPatientCoverLimit.present
            ? inPatientCoverLimit.value
            : this.inPatientCoverLimit,
        spouseCovered:
            spouseCovered.present ? spouseCovered.value : this.spouseCovered,
        numberOfChildren: numberOfChildren.present
            ? numberOfChildren.value
            : this.numberOfChildren,
        childrenCovered: childrenCovered.present
            ? childrenCovered.value
            : this.childrenCovered,
        coverChildren:
            coverChildren.present ? coverChildren.value : this.coverChildren,
        spouseAgeBracket: spouseAgeBracket.present
            ? spouseAgeBracket.value
            : this.spouseAgeBracket,
      );
  @override
  String toString() {
    return (StringBuffer('QuoteSetup(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('quoteId: $quoteId, ')
          ..write('ageBracket: $ageBracket, ')
          ..write('inPatientCoverLimit: $inPatientCoverLimit, ')
          ..write('spouseCovered: $spouseCovered, ')
          ..write('numberOfChildren: $numberOfChildren, ')
          ..write('childrenCovered: $childrenCovered, ')
          ..write('coverChildren: $coverChildren, ')
          ..write('spouseAgeBracket: $spouseAgeBracket')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      createdAt,
      updatedAt,
      quoteId,
      ageBracket,
      inPatientCoverLimit,
      spouseCovered,
      numberOfChildren,
      childrenCovered,
      coverChildren,
      spouseAgeBracket);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuoteSetup &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.quoteId == this.quoteId &&
          other.ageBracket == this.ageBracket &&
          other.inPatientCoverLimit == this.inPatientCoverLimit &&
          other.spouseCovered == this.spouseCovered &&
          other.numberOfChildren == this.numberOfChildren &&
          other.childrenCovered == this.childrenCovered &&
          other.coverChildren == this.coverChildren &&
          other.spouseAgeBracket == this.spouseAgeBracket);
}

class QuoteSetupsCompanion extends UpdateCompanion<QuoteSetup> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<int> quoteId;
  final Value<String?> ageBracket;
  final Value<String?> inPatientCoverLimit;
  final Value<String?> spouseCovered;
  final Value<String?> numberOfChildren;
  final Value<String?> childrenCovered;
  final Value<String?> coverChildren;
  final Value<String?> spouseAgeBracket;
  const QuoteSetupsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.quoteId = const Value.absent(),
    this.ageBracket = const Value.absent(),
    this.inPatientCoverLimit = const Value.absent(),
    this.spouseCovered = const Value.absent(),
    this.numberOfChildren = const Value.absent(),
    this.childrenCovered = const Value.absent(),
    this.coverChildren = const Value.absent(),
    this.spouseAgeBracket = const Value.absent(),
  });
  QuoteSetupsCompanion.insert({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required int quoteId,
    this.ageBracket = const Value.absent(),
    this.inPatientCoverLimit = const Value.absent(),
    this.spouseCovered = const Value.absent(),
    this.numberOfChildren = const Value.absent(),
    this.childrenCovered = const Value.absent(),
    this.coverChildren = const Value.absent(),
    this.spouseAgeBracket = const Value.absent(),
  }) : quoteId = Value(quoteId);
  static Insertable<QuoteSetup> custom({
    Expression<int>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? quoteId,
    Expression<String>? ageBracket,
    Expression<String>? inPatientCoverLimit,
    Expression<String>? spouseCovered,
    Expression<String>? numberOfChildren,
    Expression<String>? childrenCovered,
    Expression<String>? coverChildren,
    Expression<String>? spouseAgeBracket,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (quoteId != null) 'quote_id': quoteId,
      if (ageBracket != null) 'age_bracket': ageBracket,
      if (inPatientCoverLimit != null)
        'in_patient_cover_limit': inPatientCoverLimit,
      if (spouseCovered != null) 'spouse_covered': spouseCovered,
      if (numberOfChildren != null) 'number_of_children': numberOfChildren,
      if (childrenCovered != null) 'children_covered': childrenCovered,
      if (coverChildren != null) 'cover_children': coverChildren,
      if (spouseAgeBracket != null) 'spouse_age_bracket': spouseAgeBracket,
    });
  }

  QuoteSetupsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<int>? quoteId,
      Value<String?>? ageBracket,
      Value<String?>? inPatientCoverLimit,
      Value<String?>? spouseCovered,
      Value<String?>? numberOfChildren,
      Value<String?>? childrenCovered,
      Value<String?>? coverChildren,
      Value<String?>? spouseAgeBracket}) {
    return QuoteSetupsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      quoteId: quoteId ?? this.quoteId,
      ageBracket: ageBracket ?? this.ageBracket,
      inPatientCoverLimit: inPatientCoverLimit ?? this.inPatientCoverLimit,
      spouseCovered: spouseCovered ?? this.spouseCovered,
      numberOfChildren: numberOfChildren ?? this.numberOfChildren,
      childrenCovered: childrenCovered ?? this.childrenCovered,
      coverChildren: coverChildren ?? this.coverChildren,
      spouseAgeBracket: spouseAgeBracket ?? this.spouseAgeBracket,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (quoteId.present) {
      map['quote_id'] = Variable<int>(quoteId.value);
    }
    if (ageBracket.present) {
      map['age_bracket'] = Variable<String>(ageBracket.value);
    }
    if (inPatientCoverLimit.present) {
      map['in_patient_cover_limit'] =
          Variable<String>(inPatientCoverLimit.value);
    }
    if (spouseCovered.present) {
      map['spouse_covered'] = Variable<String>(spouseCovered.value);
    }
    if (numberOfChildren.present) {
      map['number_of_children'] = Variable<String>(numberOfChildren.value);
    }
    if (childrenCovered.present) {
      map['children_covered'] = Variable<String>(childrenCovered.value);
    }
    if (coverChildren.present) {
      map['cover_children'] = Variable<String>(coverChildren.value);
    }
    if (spouseAgeBracket.present) {
      map['spouse_age_bracket'] = Variable<String>(spouseAgeBracket.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuoteSetupsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('quoteId: $quoteId, ')
          ..write('ageBracket: $ageBracket, ')
          ..write('inPatientCoverLimit: $inPatientCoverLimit, ')
          ..write('spouseCovered: $spouseCovered, ')
          ..write('numberOfChildren: $numberOfChildren, ')
          ..write('childrenCovered: $childrenCovered, ')
          ..write('coverChildren: $coverChildren, ')
          ..write('spouseAgeBracket: $spouseAgeBracket')
          ..write(')'))
        .toString();
  }
}

class $QuoteBenefitsTable extends QuoteBenefits
    with TableInfo<$QuoteBenefitsTable, QuoteBenefit> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $QuoteBenefitsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: Constant(DateTime.now()));
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _quoteIdMeta =
      const VerificationMeta('quoteId');
  @override
  late final GeneratedColumn<int> quoteId = GeneratedColumn<int>(
      'quote_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('UNIQUE REFERENCES quotes (id)'));
  static const VerificationMeta _inPatientMeta =
      const VerificationMeta('inPatient');
  @override
  late final GeneratedColumn<bool> inPatient = GeneratedColumn<bool>(
      'in_patient', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("in_patient" IN (0, 1))'));
  static const VerificationMeta _outPatientMeta =
      const VerificationMeta('outPatient');
  @override
  late final GeneratedColumn<bool> outPatient = GeneratedColumn<bool>(
      'out_patient', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("out_patient" IN (0, 1))'));
  static const VerificationMeta _noCoPaymentMeta =
      const VerificationMeta('noCoPayment');
  @override
  late final GeneratedColumn<bool> noCoPayment = GeneratedColumn<bool>(
      'no_co_payment', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("no_co_payment" IN (0, 1))'));
  static const VerificationMeta _dentalMeta = const VerificationMeta('dental');
  @override
  late final GeneratedColumn<bool> dental = GeneratedColumn<bool>(
      'dental', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("dental" IN (0, 1))'));
  static const VerificationMeta _opticalMeta =
      const VerificationMeta('optical');
  @override
  late final GeneratedColumn<bool> optical = GeneratedColumn<bool>(
      'optical', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("optical" IN (0, 1))'));
  static const VerificationMeta _maternityMeta =
      const VerificationMeta('maternity');
  @override
  late final GeneratedColumn<bool> maternity = GeneratedColumn<bool>(
      'maternity', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("maternity" IN (0, 1))'));
  static const VerificationMeta _lastExpenseMeta =
      const VerificationMeta('lastExpense');
  @override
  late final GeneratedColumn<bool> lastExpense = GeneratedColumn<bool>(
      'last_expense', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("last_expense" IN (0, 1))'));
  static const VerificationMeta _personalAccidentMeta =
      const VerificationMeta('personalAccident');
  @override
  late final GeneratedColumn<bool> personalAccident = GeneratedColumn<bool>(
      'personal_accident', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("personal_accident" IN (0, 1))'));
  static const VerificationMeta _covid19CoverMeta =
      const VerificationMeta('covid19Cover');
  @override
  late final GeneratedColumn<bool> covid19Cover = GeneratedColumn<bool>(
      'covid19_cover', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("covid19_cover" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        createdAt,
        updatedAt,
        quoteId,
        inPatient,
        outPatient,
        noCoPayment,
        dental,
        optical,
        maternity,
        lastExpense,
        personalAccident,
        covid19Cover
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'quote_benefits';
  @override
  VerificationContext validateIntegrity(Insertable<QuoteBenefit> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('quote_id')) {
      context.handle(_quoteIdMeta,
          quoteId.isAcceptableOrUnknown(data['quote_id']!, _quoteIdMeta));
    } else if (isInserting) {
      context.missing(_quoteIdMeta);
    }
    if (data.containsKey('in_patient')) {
      context.handle(_inPatientMeta,
          inPatient.isAcceptableOrUnknown(data['in_patient']!, _inPatientMeta));
    }
    if (data.containsKey('out_patient')) {
      context.handle(
          _outPatientMeta,
          outPatient.isAcceptableOrUnknown(
              data['out_patient']!, _outPatientMeta));
    }
    if (data.containsKey('no_co_payment')) {
      context.handle(
          _noCoPaymentMeta,
          noCoPayment.isAcceptableOrUnknown(
              data['no_co_payment']!, _noCoPaymentMeta));
    }
    if (data.containsKey('dental')) {
      context.handle(_dentalMeta,
          dental.isAcceptableOrUnknown(data['dental']!, _dentalMeta));
    }
    if (data.containsKey('optical')) {
      context.handle(_opticalMeta,
          optical.isAcceptableOrUnknown(data['optical']!, _opticalMeta));
    }
    if (data.containsKey('maternity')) {
      context.handle(_maternityMeta,
          maternity.isAcceptableOrUnknown(data['maternity']!, _maternityMeta));
    }
    if (data.containsKey('last_expense')) {
      context.handle(
          _lastExpenseMeta,
          lastExpense.isAcceptableOrUnknown(
              data['last_expense']!, _lastExpenseMeta));
    }
    if (data.containsKey('personal_accident')) {
      context.handle(
          _personalAccidentMeta,
          personalAccident.isAcceptableOrUnknown(
              data['personal_accident']!, _personalAccidentMeta));
    }
    if (data.containsKey('covid19_cover')) {
      context.handle(
          _covid19CoverMeta,
          covid19Cover.isAcceptableOrUnknown(
              data['covid19_cover']!, _covid19CoverMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  QuoteBenefit map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return QuoteBenefit(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      quoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quote_id'])!,
      inPatient: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}in_patient']),
      outPatient: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}out_patient']),
      noCoPayment: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}no_co_payment']),
      dental: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}dental']),
      optical: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}optical']),
      maternity: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}maternity']),
      lastExpense: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}last_expense']),
      personalAccident: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}personal_accident']),
      covid19Cover: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}covid19_cover']),
    );
  }

  @override
  $QuoteBenefitsTable createAlias(String alias) {
    return $QuoteBenefitsTable(attachedDatabase, alias);
  }
}

class QuoteBenefit extends DataClass implements Insertable<QuoteBenefit> {
  /// the id of the row
  final int id;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final int quoteId;
  final bool? inPatient;
  final bool? outPatient;
  final bool? noCoPayment;
  final bool? dental;
  final bool? optical;
  final bool? maternity;
  final bool? lastExpense;
  final bool? personalAccident;
  final bool? covid19Cover;
  const QuoteBenefit(
      {required this.id,
      required this.createdAt,
      this.updatedAt,
      required this.quoteId,
      this.inPatient,
      this.outPatient,
      this.noCoPayment,
      this.dental,
      this.optical,
      this.maternity,
      this.lastExpense,
      this.personalAccident,
      this.covid19Cover});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    map['quote_id'] = Variable<int>(quoteId);
    if (!nullToAbsent || inPatient != null) {
      map['in_patient'] = Variable<bool>(inPatient);
    }
    if (!nullToAbsent || outPatient != null) {
      map['out_patient'] = Variable<bool>(outPatient);
    }
    if (!nullToAbsent || noCoPayment != null) {
      map['no_co_payment'] = Variable<bool>(noCoPayment);
    }
    if (!nullToAbsent || dental != null) {
      map['dental'] = Variable<bool>(dental);
    }
    if (!nullToAbsent || optical != null) {
      map['optical'] = Variable<bool>(optical);
    }
    if (!nullToAbsent || maternity != null) {
      map['maternity'] = Variable<bool>(maternity);
    }
    if (!nullToAbsent || lastExpense != null) {
      map['last_expense'] = Variable<bool>(lastExpense);
    }
    if (!nullToAbsent || personalAccident != null) {
      map['personal_accident'] = Variable<bool>(personalAccident);
    }
    if (!nullToAbsent || covid19Cover != null) {
      map['covid19_cover'] = Variable<bool>(covid19Cover);
    }
    return map;
  }

  QuoteBenefitsCompanion toCompanion(bool nullToAbsent) {
    return QuoteBenefitsCompanion(
      id: Value(id),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      quoteId: Value(quoteId),
      inPatient: inPatient == null && nullToAbsent
          ? const Value.absent()
          : Value(inPatient),
      outPatient: outPatient == null && nullToAbsent
          ? const Value.absent()
          : Value(outPatient),
      noCoPayment: noCoPayment == null && nullToAbsent
          ? const Value.absent()
          : Value(noCoPayment),
      dental:
          dental == null && nullToAbsent ? const Value.absent() : Value(dental),
      optical: optical == null && nullToAbsent
          ? const Value.absent()
          : Value(optical),
      maternity: maternity == null && nullToAbsent
          ? const Value.absent()
          : Value(maternity),
      lastExpense: lastExpense == null && nullToAbsent
          ? const Value.absent()
          : Value(lastExpense),
      personalAccident: personalAccident == null && nullToAbsent
          ? const Value.absent()
          : Value(personalAccident),
      covid19Cover: covid19Cover == null && nullToAbsent
          ? const Value.absent()
          : Value(covid19Cover),
    );
  }

  factory QuoteBenefit.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return QuoteBenefit(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      quoteId: serializer.fromJson<int>(json['quoteId']),
      inPatient: serializer.fromJson<bool?>(json['inPatient']),
      outPatient: serializer.fromJson<bool?>(json['outPatient']),
      noCoPayment: serializer.fromJson<bool?>(json['noCoPayment']),
      dental: serializer.fromJson<bool?>(json['dental']),
      optical: serializer.fromJson<bool?>(json['optical']),
      maternity: serializer.fromJson<bool?>(json['maternity']),
      lastExpense: serializer.fromJson<bool?>(json['lastExpense']),
      personalAccident: serializer.fromJson<bool?>(json['personalAccident']),
      covid19Cover: serializer.fromJson<bool?>(json['covid19Cover']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'quoteId': serializer.toJson<int>(quoteId),
      'inPatient': serializer.toJson<bool?>(inPatient),
      'outPatient': serializer.toJson<bool?>(outPatient),
      'noCoPayment': serializer.toJson<bool?>(noCoPayment),
      'dental': serializer.toJson<bool?>(dental),
      'optical': serializer.toJson<bool?>(optical),
      'maternity': serializer.toJson<bool?>(maternity),
      'lastExpense': serializer.toJson<bool?>(lastExpense),
      'personalAccident': serializer.toJson<bool?>(personalAccident),
      'covid19Cover': serializer.toJson<bool?>(covid19Cover),
    };
  }

  QuoteBenefit copyWith(
          {int? id,
          DateTime? createdAt,
          Value<DateTime?> updatedAt = const Value.absent(),
          int? quoteId,
          Value<bool?> inPatient = const Value.absent(),
          Value<bool?> outPatient = const Value.absent(),
          Value<bool?> noCoPayment = const Value.absent(),
          Value<bool?> dental = const Value.absent(),
          Value<bool?> optical = const Value.absent(),
          Value<bool?> maternity = const Value.absent(),
          Value<bool?> lastExpense = const Value.absent(),
          Value<bool?> personalAccident = const Value.absent(),
          Value<bool?> covid19Cover = const Value.absent()}) =>
      QuoteBenefit(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        quoteId: quoteId ?? this.quoteId,
        inPatient: inPatient.present ? inPatient.value : this.inPatient,
        outPatient: outPatient.present ? outPatient.value : this.outPatient,
        noCoPayment: noCoPayment.present ? noCoPayment.value : this.noCoPayment,
        dental: dental.present ? dental.value : this.dental,
        optical: optical.present ? optical.value : this.optical,
        maternity: maternity.present ? maternity.value : this.maternity,
        lastExpense: lastExpense.present ? lastExpense.value : this.lastExpense,
        personalAccident: personalAccident.present
            ? personalAccident.value
            : this.personalAccident,
        covid19Cover:
            covid19Cover.present ? covid19Cover.value : this.covid19Cover,
      );
  @override
  String toString() {
    return (StringBuffer('QuoteBenefit(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('quoteId: $quoteId, ')
          ..write('inPatient: $inPatient, ')
          ..write('outPatient: $outPatient, ')
          ..write('noCoPayment: $noCoPayment, ')
          ..write('dental: $dental, ')
          ..write('optical: $optical, ')
          ..write('maternity: $maternity, ')
          ..write('lastExpense: $lastExpense, ')
          ..write('personalAccident: $personalAccident, ')
          ..write('covid19Cover: $covid19Cover')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      createdAt,
      updatedAt,
      quoteId,
      inPatient,
      outPatient,
      noCoPayment,
      dental,
      optical,
      maternity,
      lastExpense,
      personalAccident,
      covid19Cover);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is QuoteBenefit &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.quoteId == this.quoteId &&
          other.inPatient == this.inPatient &&
          other.outPatient == this.outPatient &&
          other.noCoPayment == this.noCoPayment &&
          other.dental == this.dental &&
          other.optical == this.optical &&
          other.maternity == this.maternity &&
          other.lastExpense == this.lastExpense &&
          other.personalAccident == this.personalAccident &&
          other.covid19Cover == this.covid19Cover);
}

class QuoteBenefitsCompanion extends UpdateCompanion<QuoteBenefit> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<int> quoteId;
  final Value<bool?> inPatient;
  final Value<bool?> outPatient;
  final Value<bool?> noCoPayment;
  final Value<bool?> dental;
  final Value<bool?> optical;
  final Value<bool?> maternity;
  final Value<bool?> lastExpense;
  final Value<bool?> personalAccident;
  final Value<bool?> covid19Cover;
  const QuoteBenefitsCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.quoteId = const Value.absent(),
    this.inPatient = const Value.absent(),
    this.outPatient = const Value.absent(),
    this.noCoPayment = const Value.absent(),
    this.dental = const Value.absent(),
    this.optical = const Value.absent(),
    this.maternity = const Value.absent(),
    this.lastExpense = const Value.absent(),
    this.personalAccident = const Value.absent(),
    this.covid19Cover = const Value.absent(),
  });
  QuoteBenefitsCompanion.insert({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    required int quoteId,
    this.inPatient = const Value.absent(),
    this.outPatient = const Value.absent(),
    this.noCoPayment = const Value.absent(),
    this.dental = const Value.absent(),
    this.optical = const Value.absent(),
    this.maternity = const Value.absent(),
    this.lastExpense = const Value.absent(),
    this.personalAccident = const Value.absent(),
    this.covid19Cover = const Value.absent(),
  }) : quoteId = Value(quoteId);
  static Insertable<QuoteBenefit> custom({
    Expression<int>? id,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? quoteId,
    Expression<bool>? inPatient,
    Expression<bool>? outPatient,
    Expression<bool>? noCoPayment,
    Expression<bool>? dental,
    Expression<bool>? optical,
    Expression<bool>? maternity,
    Expression<bool>? lastExpense,
    Expression<bool>? personalAccident,
    Expression<bool>? covid19Cover,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (quoteId != null) 'quote_id': quoteId,
      if (inPatient != null) 'in_patient': inPatient,
      if (outPatient != null) 'out_patient': outPatient,
      if (noCoPayment != null) 'no_co_payment': noCoPayment,
      if (dental != null) 'dental': dental,
      if (optical != null) 'optical': optical,
      if (maternity != null) 'maternity': maternity,
      if (lastExpense != null) 'last_expense': lastExpense,
      if (personalAccident != null) 'personal_accident': personalAccident,
      if (covid19Cover != null) 'covid19_cover': covid19Cover,
    });
  }

  QuoteBenefitsCompanion copyWith(
      {Value<int>? id,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<int>? quoteId,
      Value<bool?>? inPatient,
      Value<bool?>? outPatient,
      Value<bool?>? noCoPayment,
      Value<bool?>? dental,
      Value<bool?>? optical,
      Value<bool?>? maternity,
      Value<bool?>? lastExpense,
      Value<bool?>? personalAccident,
      Value<bool?>? covid19Cover}) {
    return QuoteBenefitsCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      quoteId: quoteId ?? this.quoteId,
      inPatient: inPatient ?? this.inPatient,
      outPatient: outPatient ?? this.outPatient,
      noCoPayment: noCoPayment ?? this.noCoPayment,
      dental: dental ?? this.dental,
      optical: optical ?? this.optical,
      maternity: maternity ?? this.maternity,
      lastExpense: lastExpense ?? this.lastExpense,
      personalAccident: personalAccident ?? this.personalAccident,
      covid19Cover: covid19Cover ?? this.covid19Cover,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (quoteId.present) {
      map['quote_id'] = Variable<int>(quoteId.value);
    }
    if (inPatient.present) {
      map['in_patient'] = Variable<bool>(inPatient.value);
    }
    if (outPatient.present) {
      map['out_patient'] = Variable<bool>(outPatient.value);
    }
    if (noCoPayment.present) {
      map['no_co_payment'] = Variable<bool>(noCoPayment.value);
    }
    if (dental.present) {
      map['dental'] = Variable<bool>(dental.value);
    }
    if (optical.present) {
      map['optical'] = Variable<bool>(optical.value);
    }
    if (maternity.present) {
      map['maternity'] = Variable<bool>(maternity.value);
    }
    if (lastExpense.present) {
      map['last_expense'] = Variable<bool>(lastExpense.value);
    }
    if (personalAccident.present) {
      map['personal_accident'] = Variable<bool>(personalAccident.value);
    }
    if (covid19Cover.present) {
      map['covid19_cover'] = Variable<bool>(covid19Cover.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('QuoteBenefitsCompanion(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('quoteId: $quoteId, ')
          ..write('inPatient: $inPatient, ')
          ..write('outPatient: $outPatient, ')
          ..write('noCoPayment: $noCoPayment, ')
          ..write('dental: $dental, ')
          ..write('optical: $optical, ')
          ..write('maternity: $maternity, ')
          ..write('lastExpense: $lastExpense, ')
          ..write('personalAccident: $personalAccident, ')
          ..write('covid19Cover: $covid19Cover')
          ..write(')'))
        .toString();
  }
}

abstract class _$LmsDb extends GeneratedDatabase {
  _$LmsDb(QueryExecutor e) : super(e);
  late final $AgentsTable agents = $AgentsTable(this);
  late final $LeadsTable leads = $LeadsTable(this);
  late final $QuotesTable quotes = $QuotesTable(this);
  late final $QuoteSetupsTable quoteSetups = $QuoteSetupsTable(this);
  late final $QuoteBenefitsTable quoteBenefits = $QuoteBenefitsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [agents, leads, quotes, quoteSetups, quoteBenefits];
}
