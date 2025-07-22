// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'input_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InputResultImpl _$$InputResultImplFromJson(Map<String, dynamic> json) =>
    _$InputResultImpl(
      id: json['id'] as String,
      objectName: json['objectName'] as String? ?? '',
      estateCostType: json['estateCostType'] as String? ?? '',
      estateClassType: json['estateClassType'] as String? ?? '',
      totalFactor: (json['totalFactor'] as num?)?.toDouble() ?? 0.0,
      totalPlannedCost: (json['totalPlannedCost'] as num?)?.toDouble() ?? 0.0,
      plannedSquare: (json['plannedSquare'] as num?)?.toDouble() ?? 0.0,
      averageMeterPerSquare:
          (json['averageMeterPerSquare'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$InputResultImplToJson(_$InputResultImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectName': instance.objectName,
      'estateCostType': instance.estateCostType,
      'estateClassType': instance.estateClassType,
      'totalFactor': instance.totalFactor,
      'totalPlannedCost': instance.totalPlannedCost,
      'plannedSquare': instance.plannedSquare,
      'averageMeterPerSquare': instance.averageMeterPerSquare,
    };
