// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthState _$AuthStateFromJson(Map<String, dynamic> json) => _AuthState(
  password: json['password'] as String?,
  formError: json['formError'] as String?,
  formStage:
      $enumDecodeNullable(_$FormStageEnumMap, json['formStage']) ??
      FormStage.common,
);

Map<String, dynamic> _$AuthStateToJson(_AuthState instance) =>
    <String, dynamic>{
      'password': instance.password,
      'formError': instance.formError,
      'formStage': _$FormStageEnumMap[instance.formStage]!,
    };

const _$FormStageEnumMap = {
  FormStage.initial: 'initial',
  FormStage.loading: 'loading',
  FormStage.success: 'success',
  FormStage.failed: 'failed',
  FormStage.common: 'common',
};
