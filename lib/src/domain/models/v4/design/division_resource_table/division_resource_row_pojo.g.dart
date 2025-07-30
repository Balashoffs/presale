// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_resource_row_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionResourceRowPojoImpl _$$DivisionResourceRowPojoImplFromJson(
  Map<String, dynamic> json,
) => _$DivisionResourceRowPojoImpl(
  divisionName: json['divisionName'] as String,
  divisionShortName: json['divisionShortName'] as String,
  resourceName: json['resourceName'] as String,
  resourceQnt: (json['resourceQnt'] as num).toInt(),
  workDays: (json['workDays'] as num).toInt(),
  complexFactor: (json['complexFactor'] as num).toDouble(),
  squareFactor: (json['squareFactor'] as num).toDouble(),
  resourceUsingFactor: (json['resourceUsingFactor'] as num).toDouble(),
  resourceRowCost: (json['resourceRowCost'] as num).toDouble(),
  resourceCostPerDay: (json['resourceCostPerDay'] as num).toDouble(),
);

Map<String, dynamic> _$$DivisionResourceRowPojoImplToJson(
  _$DivisionResourceRowPojoImpl instance,
) => <String, dynamic>{
  'divisionName': instance.divisionName,
  'divisionShortName': instance.divisionShortName,
  'resourceName': instance.resourceName,
  'resourceQnt': instance.resourceQnt,
  'workDays': instance.workDays,
  'complexFactor': instance.complexFactor,
  'squareFactor': instance.squareFactor,
  'resourceUsingFactor': instance.resourceUsingFactor,
  'resourceRowCost': instance.resourceRowCost,
  'resourceCostPerDay': instance.resourceCostPerDay,
};
