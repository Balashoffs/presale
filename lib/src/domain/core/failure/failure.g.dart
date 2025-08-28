// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'failure.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Failure _$FailureFromJson(Map<String, dynamic> json) => _Failure(
  $enumDecode(_$FailureTypeEnumMap, json['failureType']),
  json['description'] as String?,
);

Map<String, dynamic> _$FailureToJson(_Failure instance) => <String, dynamic>{
  'failureType': _$FailureTypeEnumMap[instance.failureType]!,
  'description': instance.description,
};

const _$FailureTypeEnumMap = {
  FailureType.api: 'api',
  FailureType.network: 'network',
  FailureType.unauthorized: 'unauthorized',
  FailureType.database: 'database',
  FailureType.response: 'response',
  FailureType.unknown: 'unknown',
};
