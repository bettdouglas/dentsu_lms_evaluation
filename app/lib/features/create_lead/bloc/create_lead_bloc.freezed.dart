// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_lead_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateLeadEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email, String location,
            String phone, String customerType)
        saveNewLead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, String location, String phone,
            String customerType)?
        saveNewLead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, String location, String phone,
            String customerType)?
        saveNewLead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SaveNewLead value) saveNewLead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SaveNewLead value)? saveNewLead,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SaveNewLead value)? saveNewLead,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLeadEventCopyWith<$Res> {
  factory $CreateLeadEventCopyWith(
          CreateLeadEvent value, $Res Function(CreateLeadEvent) then) =
      _$CreateLeadEventCopyWithImpl<$Res, CreateLeadEvent>;
}

/// @nodoc
class _$CreateLeadEventCopyWithImpl<$Res, $Val extends CreateLeadEvent>
    implements $CreateLeadEventCopyWith<$Res> {
  _$CreateLeadEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CreateLeadEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CreateLeadEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email, String location,
            String phone, String customerType)
        saveNewLead,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, String location, String phone,
            String customerType)?
        saveNewLead,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, String location, String phone,
            String customerType)?
        saveNewLead,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SaveNewLead value) saveNewLead,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SaveNewLead value)? saveNewLead,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SaveNewLead value)? saveNewLead,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateLeadEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SaveNewLeadImplCopyWith<$Res> {
  factory _$$SaveNewLeadImplCopyWith(
          _$SaveNewLeadImpl value, $Res Function(_$SaveNewLeadImpl) then) =
      __$$SaveNewLeadImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String name,
      String email,
      String location,
      String phone,
      String customerType});
}

/// @nodoc
class __$$SaveNewLeadImplCopyWithImpl<$Res>
    extends _$CreateLeadEventCopyWithImpl<$Res, _$SaveNewLeadImpl>
    implements _$$SaveNewLeadImplCopyWith<$Res> {
  __$$SaveNewLeadImplCopyWithImpl(
      _$SaveNewLeadImpl _value, $Res Function(_$SaveNewLeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? location = null,
    Object? phone = null,
    Object? customerType = null,
  }) {
    return _then(_$SaveNewLeadImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      customerType: null == customerType
          ? _value.customerType
          : customerType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveNewLeadImpl implements _SaveNewLead {
  const _$SaveNewLeadImpl(
      {required this.name,
      required this.email,
      required this.location,
      required this.phone,
      required this.customerType});

  @override
  final String name;
  @override
  final String email;
  @override
  final String location;
  @override
  final String phone;
  @override
  final String customerType;

  @override
  String toString() {
    return 'CreateLeadEvent.saveNewLead(name: $name, email: $email, location: $location, phone: $phone, customerType: $customerType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveNewLeadImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.customerType, customerType) ||
                other.customerType == customerType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, email, location, phone, customerType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveNewLeadImplCopyWith<_$SaveNewLeadImpl> get copyWith =>
      __$$SaveNewLeadImplCopyWithImpl<_$SaveNewLeadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String email, String location,
            String phone, String customerType)
        saveNewLead,
  }) {
    return saveNewLead(name, email, location, phone, customerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String email, String location, String phone,
            String customerType)?
        saveNewLead,
  }) {
    return saveNewLead?.call(name, email, location, phone, customerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String email, String location, String phone,
            String customerType)?
        saveNewLead,
    required TResult orElse(),
  }) {
    if (saveNewLead != null) {
      return saveNewLead(name, email, location, phone, customerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SaveNewLead value) saveNewLead,
  }) {
    return saveNewLead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SaveNewLead value)? saveNewLead,
  }) {
    return saveNewLead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SaveNewLead value)? saveNewLead,
    required TResult orElse(),
  }) {
    if (saveNewLead != null) {
      return saveNewLead(this);
    }
    return orElse();
  }
}

abstract class _SaveNewLead implements CreateLeadEvent {
  const factory _SaveNewLead(
      {required final String name,
      required final String email,
      required final String location,
      required final String phone,
      required final String customerType}) = _$SaveNewLeadImpl;

  String get name;
  String get email;
  String get location;
  String get phone;
  String get customerType;
  @JsonKey(ignore: true)
  _$$SaveNewLeadImplCopyWith<_$SaveNewLeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateLeadState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingLead,
    required TResult Function(Lead lead) leadSaved,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingLead,
    TResult? Function(Lead lead)? leadSaved,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingLead,
    TResult Function(Lead lead)? leadSaved,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingLead value) savingLead,
    required TResult Function(_LeadSaved value) leadSaved,
    required TResult Function(_ErrorSavingLead value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingLead value)? savingLead,
    TResult? Function(_LeadSaved value)? leadSaved,
    TResult? Function(_ErrorSavingLead value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingLead value)? savingLead,
    TResult Function(_LeadSaved value)? leadSaved,
    TResult Function(_ErrorSavingLead value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLeadStateCopyWith<$Res> {
  factory $CreateLeadStateCopyWith(
          CreateLeadState value, $Res Function(CreateLeadState) then) =
      _$CreateLeadStateCopyWithImpl<$Res, CreateLeadState>;
}

/// @nodoc
class _$CreateLeadStateCopyWithImpl<$Res, $Val extends CreateLeadState>
    implements $CreateLeadStateCopyWith<$Res> {
  _$CreateLeadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CreateLeadStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CreateLeadState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingLead,
    required TResult Function(Lead lead) leadSaved,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingLead,
    TResult? Function(Lead lead)? leadSaved,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingLead,
    TResult Function(Lead lead)? leadSaved,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingLead value) savingLead,
    required TResult Function(_LeadSaved value) leadSaved,
    required TResult Function(_ErrorSavingLead value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingLead value)? savingLead,
    TResult? Function(_LeadSaved value)? leadSaved,
    TResult? Function(_ErrorSavingLead value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingLead value)? savingLead,
    TResult Function(_LeadSaved value)? leadSaved,
    TResult Function(_ErrorSavingLead value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateLeadState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SavingLeadImplCopyWith<$Res> {
  factory _$$SavingLeadImplCopyWith(
          _$SavingLeadImpl value, $Res Function(_$SavingLeadImpl) then) =
      __$$SavingLeadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SavingLeadImplCopyWithImpl<$Res>
    extends _$CreateLeadStateCopyWithImpl<$Res, _$SavingLeadImpl>
    implements _$$SavingLeadImplCopyWith<$Res> {
  __$$SavingLeadImplCopyWithImpl(
      _$SavingLeadImpl _value, $Res Function(_$SavingLeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SavingLeadImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavingLeadImpl implements _SavingLead {
  const _$SavingLeadImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CreateLeadState.savingLead(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavingLeadImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavingLeadImplCopyWith<_$SavingLeadImpl> get copyWith =>
      __$$SavingLeadImplCopyWithImpl<_$SavingLeadImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingLead,
    required TResult Function(Lead lead) leadSaved,
    required TResult Function(String error) error,
  }) {
    return savingLead(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingLead,
    TResult? Function(Lead lead)? leadSaved,
    TResult? Function(String error)? error,
  }) {
    return savingLead?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingLead,
    TResult Function(Lead lead)? leadSaved,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (savingLead != null) {
      return savingLead(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingLead value) savingLead,
    required TResult Function(_LeadSaved value) leadSaved,
    required TResult Function(_ErrorSavingLead value) error,
  }) {
    return savingLead(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingLead value)? savingLead,
    TResult? Function(_LeadSaved value)? leadSaved,
    TResult? Function(_ErrorSavingLead value)? error,
  }) {
    return savingLead?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingLead value)? savingLead,
    TResult Function(_LeadSaved value)? leadSaved,
    TResult Function(_ErrorSavingLead value)? error,
    required TResult orElse(),
  }) {
    if (savingLead != null) {
      return savingLead(this);
    }
    return orElse();
  }
}

abstract class _SavingLead implements CreateLeadState {
  const factory _SavingLead({required final String message}) = _$SavingLeadImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SavingLeadImplCopyWith<_$SavingLeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LeadSavedImplCopyWith<$Res> {
  factory _$$LeadSavedImplCopyWith(
          _$LeadSavedImpl value, $Res Function(_$LeadSavedImpl) then) =
      __$$LeadSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Lead lead});
}

/// @nodoc
class __$$LeadSavedImplCopyWithImpl<$Res>
    extends _$CreateLeadStateCopyWithImpl<$Res, _$LeadSavedImpl>
    implements _$$LeadSavedImplCopyWith<$Res> {
  __$$LeadSavedImplCopyWithImpl(
      _$LeadSavedImpl _value, $Res Function(_$LeadSavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lead = null,
  }) {
    return _then(_$LeadSavedImpl(
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
    ));
  }
}

/// @nodoc

class _$LeadSavedImpl implements _LeadSaved {
  const _$LeadSavedImpl({required this.lead});

  @override
  final Lead lead;

  @override
  String toString() {
    return 'CreateLeadState.leadSaved(lead: $lead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LeadSavedImpl &&
            (identical(other.lead, lead) || other.lead == lead));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lead);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LeadSavedImplCopyWith<_$LeadSavedImpl> get copyWith =>
      __$$LeadSavedImplCopyWithImpl<_$LeadSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingLead,
    required TResult Function(Lead lead) leadSaved,
    required TResult Function(String error) error,
  }) {
    return leadSaved(lead);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingLead,
    TResult? Function(Lead lead)? leadSaved,
    TResult? Function(String error)? error,
  }) {
    return leadSaved?.call(lead);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingLead,
    TResult Function(Lead lead)? leadSaved,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (leadSaved != null) {
      return leadSaved(lead);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingLead value) savingLead,
    required TResult Function(_LeadSaved value) leadSaved,
    required TResult Function(_ErrorSavingLead value) error,
  }) {
    return leadSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingLead value)? savingLead,
    TResult? Function(_LeadSaved value)? leadSaved,
    TResult? Function(_ErrorSavingLead value)? error,
  }) {
    return leadSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingLead value)? savingLead,
    TResult Function(_LeadSaved value)? leadSaved,
    TResult Function(_ErrorSavingLead value)? error,
    required TResult orElse(),
  }) {
    if (leadSaved != null) {
      return leadSaved(this);
    }
    return orElse();
  }
}

abstract class _LeadSaved implements CreateLeadState {
  const factory _LeadSaved({required final Lead lead}) = _$LeadSavedImpl;

  Lead get lead;
  @JsonKey(ignore: true)
  _$$LeadSavedImplCopyWith<_$LeadSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSavingLeadImplCopyWith<$Res> {
  factory _$$ErrorSavingLeadImplCopyWith(_$ErrorSavingLeadImpl value,
          $Res Function(_$ErrorSavingLeadImpl) then) =
      __$$ErrorSavingLeadImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorSavingLeadImplCopyWithImpl<$Res>
    extends _$CreateLeadStateCopyWithImpl<$Res, _$ErrorSavingLeadImpl>
    implements _$$ErrorSavingLeadImplCopyWith<$Res> {
  __$$ErrorSavingLeadImplCopyWithImpl(
      _$ErrorSavingLeadImpl _value, $Res Function(_$ErrorSavingLeadImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSavingLeadImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSavingLeadImpl implements _ErrorSavingLead {
  const _$ErrorSavingLeadImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CreateLeadState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSavingLeadImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSavingLeadImplCopyWith<_$ErrorSavingLeadImpl> get copyWith =>
      __$$ErrorSavingLeadImplCopyWithImpl<_$ErrorSavingLeadImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingLead,
    required TResult Function(Lead lead) leadSaved,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingLead,
    TResult? Function(Lead lead)? leadSaved,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingLead,
    TResult Function(Lead lead)? leadSaved,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingLead value) savingLead,
    required TResult Function(_LeadSaved value) leadSaved,
    required TResult Function(_ErrorSavingLead value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingLead value)? savingLead,
    TResult? Function(_LeadSaved value)? leadSaved,
    TResult? Function(_ErrorSavingLead value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingLead value)? savingLead,
    TResult Function(_LeadSaved value)? leadSaved,
    TResult Function(_ErrorSavingLead value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSavingLead implements CreateLeadState {
  const factory _ErrorSavingLead({required final String error}) =
      _$ErrorSavingLeadImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorSavingLeadImplCopyWith<_$ErrorSavingLeadImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
