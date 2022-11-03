// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthStateNotAuthorised _$$_AuthStateNotAuthorisedFromJson(
        Map<String, dynamic> json) =>
    _$_AuthStateNotAuthorised(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthStateNotAuthorisedToJson(
        _$_AuthStateNotAuthorised instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_AuthStateAuthorised _$$_AuthStateAuthorisedFromJson(
        Map<String, dynamic> json) =>
    _$_AuthStateAuthorised(
      UserEntity.fromJson(json['userEntity'] as Map<String, dynamic>),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthStateAuthorisedToJson(
        _$_AuthStateAuthorised instance) =>
    <String, dynamic>{
      'userEntity': instance.userEntity,
      'runtimeType': instance.$type,
    };

_$_AuthStateWaiting _$$_AuthStateWaitingFromJson(Map<String, dynamic> json) =>
    _$_AuthStateWaiting(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthStateWaitingToJson(_$_AuthStateWaiting instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$_AuthStateError _$$_AuthStateErrorFromJson(Map<String, dynamic> json) =>
    _$_AuthStateError(
      json['error'],
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_AuthStateErrorToJson(_$_AuthStateError instance) =>
    <String, dynamic>{
      'error': instance.error,
      'runtimeType': instance.$type,
    };
