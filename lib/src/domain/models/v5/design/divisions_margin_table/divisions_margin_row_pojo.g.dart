// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divisions_margin_row_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DivisionsMarginRowPojo _$DivisionsMarginRowPojoFromJson(
  Map<String, dynamic> json,
) => _DivisionsMarginRowPojo(
  id: (json['id'] as num).toInt(),
  divisionName: json['divisionName'] as String,
  divisionShortName: json['divisionShortName'] as String,
  divisionSummaryCost: (json['divisionSummaryCost'] as num).toDouble(),
  overPrice: (json['overPrice'] as num).toDouble(),
  margin: (json['margin'] as num).toDouble(),
  client: (json['client'] as num).toDouble(),
  summaryCostWithMargin: (json['summaryCostWithMargin'] as num).toDouble(),
  summaryCostWithTax: (json['summaryCostWithTax'] as num).toDouble(),
);

Map<String, dynamic> _$DivisionsMarginRowPojoToJson(
  _DivisionsMarginRowPojo instance,
) => <String, dynamic>{
  'id': instance.id,
  'divisionName': instance.divisionName,
  'divisionShortName': instance.divisionShortName,
  'divisionSummaryCost': instance.divisionSummaryCost,
  'overPrice': instance.overPrice,
  'margin': instance.margin,
  'client': instance.client,
  'summaryCostWithMargin': instance.summaryCostWithMargin,
  'summaryCostWithTax': instance.summaryCostWithTax,
};
