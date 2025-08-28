// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_resource_row_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DivisionResourceRowPojo _$DivisionResourceRowPojoFromJson(
  Map<String, dynamic> json,
) => _DivisionResourceRowPojo(
  divisionName: json['divisionName'] as String,
  divisionShortName: json['divisionShortName'] as String,
  divisionDescription: json['divisionDescription'] as String,
  resourceName: json['resourceName'] as String,
  resourceQnt: (json['resourceQnt'] as num).toInt(),
  workDays: (json['workDays'] as num).toInt(),
  complexFactor: (json['complexFactor'] as num).toDouble(),
  squareFactor: (json['squareFactor'] as num).toDouble(),
  resourceUsingFactor: (json['resourceUsingFactor'] as num).toDouble(),
  resourceRowCost: (json['resourceRowCost'] as num).toDouble(),
  resourceCostPerDay: (json['resourceCostPerDay'] as num).toDouble(),
  overPriceFactor: (json['overPriceFactor'] as num?)?.toDouble() ?? 0.0,
  marginFactor: (json['marginFactor'] as num?)?.toDouble() ?? 0.0,
  resourceSummaryCost: (json['resourceSummaryCost'] as num).toDouble(),
);

Map<String, dynamic> _$DivisionResourceRowPojoToJson(
  _DivisionResourceRowPojo instance,
) => <String, dynamic>{
  'divisionName': instance.divisionName,
  'divisionShortName': instance.divisionShortName,
  'divisionDescription': instance.divisionDescription,
  'resourceName': instance.resourceName,
  'resourceQnt': instance.resourceQnt,
  'workDays': instance.workDays,
  'complexFactor': instance.complexFactor,
  'squareFactor': instance.squareFactor,
  'resourceUsingFactor': instance.resourceUsingFactor,
  'resourceRowCost': instance.resourceRowCost,
  'resourceCostPerDay': instance.resourceCostPerDay,
  'overPriceFactor': instance.overPriceFactor,
  'marginFactor': instance.marginFactor,
  'resourceSummaryCost': instance.resourceSummaryCost,
};
