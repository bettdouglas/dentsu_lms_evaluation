// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_quote_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateQuoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Lead lead, String businessUnit) createQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Lead lead, String businessUnit)? createQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Lead lead, String businessUnit)? createQuote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateQuote value) createQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateQuote value)? createQuote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateQuote value)? createQuote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuoteEventCopyWith<$Res> {
  factory $CreateQuoteEventCopyWith(
          CreateQuoteEvent value, $Res Function(CreateQuoteEvent) then) =
      _$CreateQuoteEventCopyWithImpl<$Res, CreateQuoteEvent>;
}

/// @nodoc
class _$CreateQuoteEventCopyWithImpl<$Res, $Val extends CreateQuoteEvent>
    implements $CreateQuoteEventCopyWith<$Res> {
  _$CreateQuoteEventCopyWithImpl(this._value, this._then);

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
    extends _$CreateQuoteEventCopyWithImpl<$Res, _$StartedImpl>
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
    return 'CreateQuoteEvent.started()';
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
    required TResult Function(Lead lead, String businessUnit) createQuote,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Lead lead, String businessUnit)? createQuote,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Lead lead, String businessUnit)? createQuote,
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
    required TResult Function(_CreateQuote value) createQuote,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateQuote value)? createQuote,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateQuote value)? createQuote,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreateQuoteEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$CreateQuoteImplCopyWith<$Res> {
  factory _$$CreateQuoteImplCopyWith(
          _$CreateQuoteImpl value, $Res Function(_$CreateQuoteImpl) then) =
      __$$CreateQuoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Lead lead, String businessUnit});
}

/// @nodoc
class __$$CreateQuoteImplCopyWithImpl<$Res>
    extends _$CreateQuoteEventCopyWithImpl<$Res, _$CreateQuoteImpl>
    implements _$$CreateQuoteImplCopyWith<$Res> {
  __$$CreateQuoteImplCopyWithImpl(
      _$CreateQuoteImpl _value, $Res Function(_$CreateQuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lead = null,
    Object? businessUnit = null,
  }) {
    return _then(_$CreateQuoteImpl(
      lead: null == lead
          ? _value.lead
          : lead // ignore: cast_nullable_to_non_nullable
              as Lead,
      businessUnit: null == businessUnit
          ? _value.businessUnit
          : businessUnit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateQuoteImpl implements _CreateQuote {
  const _$CreateQuoteImpl({required this.lead, required this.businessUnit});

  @override
  final Lead lead;
  @override
  final String businessUnit;

  @override
  String toString() {
    return 'CreateQuoteEvent.createQuote(lead: $lead, businessUnit: $businessUnit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateQuoteImpl &&
            (identical(other.lead, lead) || other.lead == lead) &&
            (identical(other.businessUnit, businessUnit) ||
                other.businessUnit == businessUnit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, lead, businessUnit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateQuoteImplCopyWith<_$CreateQuoteImpl> get copyWith =>
      __$$CreateQuoteImplCopyWithImpl<_$CreateQuoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Lead lead, String businessUnit) createQuote,
  }) {
    return createQuote(lead, businessUnit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Lead lead, String businessUnit)? createQuote,
  }) {
    return createQuote?.call(lead, businessUnit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Lead lead, String businessUnit)? createQuote,
    required TResult orElse(),
  }) {
    if (createQuote != null) {
      return createQuote(lead, businessUnit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_CreateQuote value) createQuote,
  }) {
    return createQuote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_CreateQuote value)? createQuote,
  }) {
    return createQuote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_CreateQuote value)? createQuote,
    required TResult orElse(),
  }) {
    if (createQuote != null) {
      return createQuote(this);
    }
    return orElse();
  }
}

abstract class _CreateQuote implements CreateQuoteEvent {
  const factory _CreateQuote(
      {required final Lead lead,
      required final String businessUnit}) = _$CreateQuoteImpl;

  Lead get lead;
  String get businessUnit;
  @JsonKey(ignore: true)
  _$$CreateQuoteImplCopyWith<_$CreateQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateQuoteState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingQuote,
    required TResult Function(Quote quote) quoteSaved,
    required TResult Function(String error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingQuote,
    TResult? Function(Quote quote)? quoteSaved,
    TResult? Function(String error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingQuote,
    TResult Function(Quote quote)? quoteSaved,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingQuote value) savingQuote,
    required TResult Function(_QuoteSaved value) quoteSaved,
    required TResult Function(_ErrorSavingQuote value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingQuote value)? savingQuote,
    TResult? Function(_QuoteSaved value)? quoteSaved,
    TResult? Function(_ErrorSavingQuote value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingQuote value)? savingQuote,
    TResult Function(_QuoteSaved value)? quoteSaved,
    TResult Function(_ErrorSavingQuote value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateQuoteStateCopyWith<$Res> {
  factory $CreateQuoteStateCopyWith(
          CreateQuoteState value, $Res Function(CreateQuoteState) then) =
      _$CreateQuoteStateCopyWithImpl<$Res, CreateQuoteState>;
}

/// @nodoc
class _$CreateQuoteStateCopyWithImpl<$Res, $Val extends CreateQuoteState>
    implements $CreateQuoteStateCopyWith<$Res> {
  _$CreateQuoteStateCopyWithImpl(this._value, this._then);

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
    extends _$CreateQuoteStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CreateQuoteState.initial()';
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
    required TResult Function(String message) savingQuote,
    required TResult Function(Quote quote) quoteSaved,
    required TResult Function(String error) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingQuote,
    TResult? Function(Quote quote)? quoteSaved,
    TResult? Function(String error)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingQuote,
    TResult Function(Quote quote)? quoteSaved,
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
    required TResult Function(_SavingQuote value) savingQuote,
    required TResult Function(_QuoteSaved value) quoteSaved,
    required TResult Function(_ErrorSavingQuote value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingQuote value)? savingQuote,
    TResult? Function(_QuoteSaved value)? quoteSaved,
    TResult? Function(_ErrorSavingQuote value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingQuote value)? savingQuote,
    TResult Function(_QuoteSaved value)? quoteSaved,
    TResult Function(_ErrorSavingQuote value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreateQuoteState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$SavingQuoteImplCopyWith<$Res> {
  factory _$$SavingQuoteImplCopyWith(
          _$SavingQuoteImpl value, $Res Function(_$SavingQuoteImpl) then) =
      __$$SavingQuoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SavingQuoteImplCopyWithImpl<$Res>
    extends _$CreateQuoteStateCopyWithImpl<$Res, _$SavingQuoteImpl>
    implements _$$SavingQuoteImplCopyWith<$Res> {
  __$$SavingQuoteImplCopyWithImpl(
      _$SavingQuoteImpl _value, $Res Function(_$SavingQuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SavingQuoteImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SavingQuoteImpl implements _SavingQuote {
  const _$SavingQuoteImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'CreateQuoteState.savingQuote(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SavingQuoteImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SavingQuoteImplCopyWith<_$SavingQuoteImpl> get copyWith =>
      __$$SavingQuoteImplCopyWithImpl<_$SavingQuoteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingQuote,
    required TResult Function(Quote quote) quoteSaved,
    required TResult Function(String error) error,
  }) {
    return savingQuote(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingQuote,
    TResult? Function(Quote quote)? quoteSaved,
    TResult? Function(String error)? error,
  }) {
    return savingQuote?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingQuote,
    TResult Function(Quote quote)? quoteSaved,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (savingQuote != null) {
      return savingQuote(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingQuote value) savingQuote,
    required TResult Function(_QuoteSaved value) quoteSaved,
    required TResult Function(_ErrorSavingQuote value) error,
  }) {
    return savingQuote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingQuote value)? savingQuote,
    TResult? Function(_QuoteSaved value)? quoteSaved,
    TResult? Function(_ErrorSavingQuote value)? error,
  }) {
    return savingQuote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingQuote value)? savingQuote,
    TResult Function(_QuoteSaved value)? quoteSaved,
    TResult Function(_ErrorSavingQuote value)? error,
    required TResult orElse(),
  }) {
    if (savingQuote != null) {
      return savingQuote(this);
    }
    return orElse();
  }
}

abstract class _SavingQuote implements CreateQuoteState {
  const factory _SavingQuote({required final String message}) =
      _$SavingQuoteImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$SavingQuoteImplCopyWith<_$SavingQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuoteSavedImplCopyWith<$Res> {
  factory _$$QuoteSavedImplCopyWith(
          _$QuoteSavedImpl value, $Res Function(_$QuoteSavedImpl) then) =
      __$$QuoteSavedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Quote quote});
}

/// @nodoc
class __$$QuoteSavedImplCopyWithImpl<$Res>
    extends _$CreateQuoteStateCopyWithImpl<$Res, _$QuoteSavedImpl>
    implements _$$QuoteSavedImplCopyWith<$Res> {
  __$$QuoteSavedImplCopyWithImpl(
      _$QuoteSavedImpl _value, $Res Function(_$QuoteSavedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_$QuoteSavedImpl(
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as Quote,
    ));
  }
}

/// @nodoc

class _$QuoteSavedImpl implements _QuoteSaved {
  const _$QuoteSavedImpl({required this.quote});

  @override
  final Quote quote;

  @override
  String toString() {
    return 'CreateQuoteState.quoteSaved(quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuoteSavedImpl &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @override
  int get hashCode => Object.hash(runtimeType, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuoteSavedImplCopyWith<_$QuoteSavedImpl> get copyWith =>
      __$$QuoteSavedImplCopyWithImpl<_$QuoteSavedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingQuote,
    required TResult Function(Quote quote) quoteSaved,
    required TResult Function(String error) error,
  }) {
    return quoteSaved(quote);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingQuote,
    TResult? Function(Quote quote)? quoteSaved,
    TResult? Function(String error)? error,
  }) {
    return quoteSaved?.call(quote);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingQuote,
    TResult Function(Quote quote)? quoteSaved,
    TResult Function(String error)? error,
    required TResult orElse(),
  }) {
    if (quoteSaved != null) {
      return quoteSaved(quote);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_SavingQuote value) savingQuote,
    required TResult Function(_QuoteSaved value) quoteSaved,
    required TResult Function(_ErrorSavingQuote value) error,
  }) {
    return quoteSaved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingQuote value)? savingQuote,
    TResult? Function(_QuoteSaved value)? quoteSaved,
    TResult? Function(_ErrorSavingQuote value)? error,
  }) {
    return quoteSaved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingQuote value)? savingQuote,
    TResult Function(_QuoteSaved value)? quoteSaved,
    TResult Function(_ErrorSavingQuote value)? error,
    required TResult orElse(),
  }) {
    if (quoteSaved != null) {
      return quoteSaved(this);
    }
    return orElse();
  }
}

abstract class _QuoteSaved implements CreateQuoteState {
  const factory _QuoteSaved({required final Quote quote}) = _$QuoteSavedImpl;

  Quote get quote;
  @JsonKey(ignore: true)
  _$$QuoteSavedImplCopyWith<_$QuoteSavedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorSavingQuoteImplCopyWith<$Res> {
  factory _$$ErrorSavingQuoteImplCopyWith(_$ErrorSavingQuoteImpl value,
          $Res Function(_$ErrorSavingQuoteImpl) then) =
      __$$ErrorSavingQuoteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$ErrorSavingQuoteImplCopyWithImpl<$Res>
    extends _$CreateQuoteStateCopyWithImpl<$Res, _$ErrorSavingQuoteImpl>
    implements _$$ErrorSavingQuoteImplCopyWith<$Res> {
  __$$ErrorSavingQuoteImplCopyWithImpl(_$ErrorSavingQuoteImpl _value,
      $Res Function(_$ErrorSavingQuoteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ErrorSavingQuoteImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorSavingQuoteImpl implements _ErrorSavingQuote {
  const _$ErrorSavingQuoteImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'CreateQuoteState.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorSavingQuoteImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorSavingQuoteImplCopyWith<_$ErrorSavingQuoteImpl> get copyWith =>
      __$$ErrorSavingQuoteImplCopyWithImpl<_$ErrorSavingQuoteImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) savingQuote,
    required TResult Function(Quote quote) quoteSaved,
    required TResult Function(String error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String message)? savingQuote,
    TResult? Function(Quote quote)? quoteSaved,
    TResult? Function(String error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? savingQuote,
    TResult Function(Quote quote)? quoteSaved,
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
    required TResult Function(_SavingQuote value) savingQuote,
    required TResult Function(_QuoteSaved value) quoteSaved,
    required TResult Function(_ErrorSavingQuote value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_SavingQuote value)? savingQuote,
    TResult? Function(_QuoteSaved value)? quoteSaved,
    TResult? Function(_ErrorSavingQuote value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_SavingQuote value)? savingQuote,
    TResult Function(_QuoteSaved value)? quoteSaved,
    TResult Function(_ErrorSavingQuote value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorSavingQuote implements CreateQuoteState {
  const factory _ErrorSavingQuote({required final String error}) =
      _$ErrorSavingQuoteImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$ErrorSavingQuoteImplCopyWith<_$ErrorSavingQuoteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
