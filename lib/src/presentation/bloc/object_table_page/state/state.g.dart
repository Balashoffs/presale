// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ObjectTableState _$ObjectTableStateFromJson(
  Map<String, dynamic> json,
) => _ObjectTableState(
  objectName: json['objectName'] as String?,
  address: json['address'] as String?,
  square: (json['square'] as num?)?.toDouble(),
  workDuration: (json['workDuration'] as num?)?.toInt() ?? 100,
  profitNorm: (json['profitNorm'] as num?)?.toDouble() ?? 1,
  distanceCoefficient: (json['distanceCoefficient'] as num?)?.toDouble() ?? 1,
  durationCoefficient: (json['durationCoefficient'] as num?)?.toDouble() ?? 1,
  customerCoefficient: (json['customerCoefficient'] as num?)?.toDouble() ?? 1,
  difficultyCoefficient:
      (json['difficultyCoefficient'] as num?)?.toDouble() ?? 1,
);

Map<String, dynamic> _$ObjectTableStateToJson(_ObjectTableState instance) =>
    <String, dynamic>{
      'objectName': instance.objectName,
      'address': instance.address,
      'square': instance.square,
      'workDuration': instance.workDuration,
      'profitNorm': instance.profitNorm,
      'distanceCoefficient': instance.distanceCoefficient,
      'durationCoefficient': instance.durationCoefficient,
      'customerCoefficient': instance.customerCoefficient,
      'difficultyCoefficient': instance.difficultyCoefficient,
    };
