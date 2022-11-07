// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthState _$AuthStateFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'notAuthorized':
      return _AuthStateNotAuthorised.fromJson(json);
    case 'authorized':
      return _AuthStateAuthorised.fromJson(json);
    case 'waiting':
      return _AuthStateWaiting.fromJson(json);
    case 'error':
      return _AuthStateError.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'AuthState',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorised value) notAuthorized,
    required TResult Function(_AuthStateAuthorised value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_AuthStateNotAuthorisedCopyWith<$Res> {
  factory _$$_AuthStateNotAuthorisedCopyWith(_$_AuthStateNotAuthorised value,
          $Res Function(_$_AuthStateNotAuthorised) then) =
      __$$_AuthStateNotAuthorisedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateNotAuthorisedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateNotAuthorisedCopyWith<$Res> {
  __$$_AuthStateNotAuthorisedCopyWithImpl(_$_AuthStateNotAuthorised _value,
      $Res Function(_$_AuthStateNotAuthorised) _then)
      : super(_value, (v) => _then(v as _$_AuthStateNotAuthorised));

  @override
  _$_AuthStateNotAuthorised get _value =>
      super._value as _$_AuthStateNotAuthorised;
}

/// @nodoc
@JsonSerializable()
class _$_AuthStateNotAuthorised implements _AuthStateNotAuthorised {
  _$_AuthStateNotAuthorised({final String? $type})
      : $type = $type ?? 'notAuthorized';

  factory _$_AuthStateNotAuthorised.fromJson(Map<String, dynamic> json) =>
      _$$_AuthStateNotAuthorisedFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.notAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateNotAuthorised);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return notAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
  }) {
    return notAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorised value) notAuthorized,
    required TResult Function(_AuthStateAuthorised value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) {
    return notAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
  }) {
    return notAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (notAuthorized != null) {
      return notAuthorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthStateNotAuthorisedToJson(
      this,
    );
  }
}

abstract class _AuthStateNotAuthorised implements AuthState {
  factory _AuthStateNotAuthorised() = _$_AuthStateNotAuthorised;

  factory _AuthStateNotAuthorised.fromJson(Map<String, dynamic> json) =
      _$_AuthStateNotAuthorised.fromJson;
}

/// @nodoc
abstract class _$$_AuthStateAuthorisedCopyWith<$Res> {
  factory _$$_AuthStateAuthorisedCopyWith(_$_AuthStateAuthorised value,
          $Res Function(_$_AuthStateAuthorised) then) =
      __$$_AuthStateAuthorisedCopyWithImpl<$Res>;
  $Res call({UserEntity userEntity});

  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$$_AuthStateAuthorisedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateAuthorisedCopyWith<$Res> {
  __$$_AuthStateAuthorisedCopyWithImpl(_$_AuthStateAuthorised _value,
      $Res Function(_$_AuthStateAuthorised) _then)
      : super(_value, (v) => _then(v as _$_AuthStateAuthorised));

  @override
  _$_AuthStateAuthorised get _value => super._value as _$_AuthStateAuthorised;

  @override
  $Res call({
    Object? userEntity = freezed,
  }) {
    return _then(_$_AuthStateAuthorised(
      userEntity == freezed
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
    ));
  }

  @override
  $UserEntityCopyWith<$Res> get userEntity {
    return $UserEntityCopyWith<$Res>(_value.userEntity, (value) {
      return _then(_value.copyWith(userEntity: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthStateAuthorised implements _AuthStateAuthorised {
  _$_AuthStateAuthorised(this.userEntity, {final String? $type})
      : $type = $type ?? 'authorized';

  factory _$_AuthStateAuthorised.fromJson(Map<String, dynamic> json) =>
      _$$_AuthStateAuthorisedFromJson(json);

  @override
  final UserEntity userEntity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.authorized(userEntity: $userEntity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateAuthorised &&
            const DeepCollectionEquality()
                .equals(other.userEntity, userEntity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userEntity));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateAuthorisedCopyWith<_$_AuthStateAuthorised> get copyWith =>
      __$$_AuthStateAuthorisedCopyWithImpl<_$_AuthStateAuthorised>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return authorized(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
  }) {
    return authorized?.call(userEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(userEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorised value) notAuthorized,
    required TResult Function(_AuthStateAuthorised value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) {
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
  }) {
    return authorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthStateAuthorisedToJson(
      this,
    );
  }
}

abstract class _AuthStateAuthorised implements AuthState {
  factory _AuthStateAuthorised(final UserEntity userEntity) =
      _$_AuthStateAuthorised;

  factory _AuthStateAuthorised.fromJson(Map<String, dynamic> json) =
      _$_AuthStateAuthorised.fromJson;

  UserEntity get userEntity;
  @JsonKey(ignore: true)
  _$$_AuthStateAuthorisedCopyWith<_$_AuthStateAuthorised> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthStateWaitingCopyWith<$Res> {
  factory _$$_AuthStateWaitingCopyWith(
          _$_AuthStateWaiting value, $Res Function(_$_AuthStateWaiting) then) =
      __$$_AuthStateWaitingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStateWaitingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateWaitingCopyWith<$Res> {
  __$$_AuthStateWaitingCopyWithImpl(
      _$_AuthStateWaiting _value, $Res Function(_$_AuthStateWaiting) _then)
      : super(_value, (v) => _then(v as _$_AuthStateWaiting));

  @override
  _$_AuthStateWaiting get _value => super._value as _$_AuthStateWaiting;
}

/// @nodoc
@JsonSerializable()
class _$_AuthStateWaiting implements _AuthStateWaiting {
  _$_AuthStateWaiting({final String? $type}) : $type = $type ?? 'waiting';

  factory _$_AuthStateWaiting.fromJson(Map<String, dynamic> json) =>
      _$$_AuthStateWaitingFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.waiting()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStateWaiting);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return waiting();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
  }) {
    return waiting?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStateNotAuthorised value) notAuthorized,
    required TResult Function(_AuthStateAuthorised value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) {
    return waiting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
  }) {
    return waiting?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (waiting != null) {
      return waiting(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthStateWaitingToJson(
      this,
    );
  }
}

abstract class _AuthStateWaiting implements AuthState {
  factory _AuthStateWaiting() = _$_AuthStateWaiting;

  factory _AuthStateWaiting.fromJson(Map<String, dynamic> json) =
      _$_AuthStateWaiting.fromJson;
}

/// @nodoc
abstract class _$$_AuthStateErrorCopyWith<$Res> {
  factory _$$_AuthStateErrorCopyWith(
          _$_AuthStateError value, $Res Function(_$_AuthStateError) then) =
      __$$_AuthStateErrorCopyWithImpl<$Res>;
  $Res call({dynamic error});
}

/// @nodoc
class __$$_AuthStateErrorCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStateErrorCopyWith<$Res> {
  __$$_AuthStateErrorCopyWithImpl(
      _$_AuthStateError _value, $Res Function(_$_AuthStateError) _then)
      : super(_value, (v) => _then(v as _$_AuthStateError));

  @override
  _$_AuthStateError get _value => super._value as _$_AuthStateError;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_AuthStateError(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthStateError implements _AuthStateError {
  _$_AuthStateError(this.error, {final String? $type})
      : $type = $type ?? 'error';

  factory _$_AuthStateError.fromJson(Map<String, dynamic> json) =>
      _$$_AuthStateErrorFromJson(json);

  @override
  final dynamic error;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'AuthState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthStateError &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      __$$_AuthStateErrorCopyWithImpl<_$_AuthStateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notAuthorized,
    required TResult Function(UserEntity userEntity) authorized,
    required TResult Function() waiting,
    required TResult Function(dynamic error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notAuthorized,
    TResult Function(UserEntity userEntity)? authorized,
    TResult Function()? waiting,
    TResult Function(dynamic error)? error,
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
    required TResult Function(_AuthStateNotAuthorised value) notAuthorized,
    required TResult Function(_AuthStateAuthorised value) authorized,
    required TResult Function(_AuthStateWaiting value) waiting,
    required TResult Function(_AuthStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStateNotAuthorised value)? notAuthorized,
    TResult Function(_AuthStateAuthorised value)? authorized,
    TResult Function(_AuthStateWaiting value)? waiting,
    TResult Function(_AuthStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthStateErrorToJson(
      this,
    );
  }
}

abstract class _AuthStateError implements AuthState {
  factory _AuthStateError(final dynamic error) = _$_AuthStateError;

  factory _AuthStateError.fromJson(Map<String, dynamic> json) =
      _$_AuthStateError.fromJson;

  dynamic get error;
  @JsonKey(ignore: true)
  _$$_AuthStateErrorCopyWith<_$_AuthStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
