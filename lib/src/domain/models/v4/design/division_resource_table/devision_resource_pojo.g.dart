// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devision_resource_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionResourceImpl _$$DivisionResourceImplFromJson(
  Map<String, dynamic> json,
) => _$DivisionResourceImpl(
  divisionName: json['divisionName'] as String,
  divisionShortName: json['divisionShortName'] as String,
  resourceName: json['resourceName'] as String,
  resourceQnt: (json['resourceQnt'] as num).toInt(),
  workDays: (json['workDays'] as num).toInt(),
  complexFactor: (json['complexFactor'] as num).toDouble(),
  squareFactor: (json['squareFactor'] as num).toDouble(),
  resourceUsingFactor: (json['resourceUsingFactor'] as num).toDouble(),
  divisionPerResourceRowCost: (json['divisionPerResourceRowCost'] as num)
      .toDouble(),
  divisionSummaryCost: (json['divisionSummaryCost'] as num).toDouble(),
  resourceCostPerDay: (json['resourceCostPerDay'] as num).toDouble(),
  resourceCostPerMonth: (json['resourceCostPerMonth'] as num).toDouble(),
);

Map<String, dynamic> _$$DivisionResourceImplToJson(
  _$DivisionResourceImpl instance,
) => <String, dynamic>{
  'divisionName': instance.divisionName,
  'divisionShortName': instance.divisionShortName,
  'resourceName': instance.resourceName,
  'resourceQnt': instance.resourceQnt,
  'workDays': instance.workDays,
  'complexFactor': instance.complexFactor,
  'squareFactor': instance.squareFactor,
  'resourceUsingFactor': instance.resourceUsingFactor,
  'divisionPerResourceRowCost': instance.divisionPerResourceRowCost,
  'divisionSummaryCost': instance.divisionSummaryCost,
  'resourceCostPerDay': instance.resourceCostPerDay,
  'resourceCostPerMonth': instance.resourceCostPerMonth,
};
