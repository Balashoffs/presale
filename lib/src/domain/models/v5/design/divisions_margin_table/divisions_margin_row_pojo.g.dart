// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divisions_margin_row_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionsMarginRowPojoImpl _$$DivisionsMarginRowPojoImplFromJson(
  Map<String, dynamic> json,
) => _$DivisionsMarginRowPojoImpl(
  id: (json['id'] as num).toInt(),
  divisionName: json['divisionName'] as String,
  divisionShortName: json['divisionShortName'] as String,
  divisionSummaryCost: (json['divisionSummaryCost'] as num).toDouble(),
  overPriceFactor: (json['overPriceFactor'] as num).toDouble(),
  marginFactor: (json['marginFactor'] as num).toDouble(),
  summaryCostWithMargin: (json['summaryCostWithMargin'] as num).toDouble(),
  summaryCostWithTax: (json['summaryCostWithTax'] as num).toDouble(),
);

Map<String, dynamic> _$$DivisionsMarginRowPojoImplToJson(
  _$DivisionsMarginRowPojoImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'divisionName': instance.divisionName,
  'divisionShortName': instance.divisionShortName,
  'divisionSummaryCost': instance.divisionSummaryCost,
  'overPriceFactor': instance.overPriceFactor,
  'marginFactor': instance.marginFactor,
  'summaryCostWithMargin': instance.summaryCostWithMargin,
  'summaryCostWithTax': instance.summaryCostWithTax,
};
