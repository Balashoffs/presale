// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionResultImpl _$$DivisionResultImplFromJson(Map<String, dynamic> json) =>
    _$DivisionResultImpl(
      division: Division.fromJson(json['division'] as Map<String, dynamic>),
      clearDivisionRate: (json['clearDivisionRate'] as num).toDouble(),
      fullDivisionRate: (json['fullDivisionRate'] as num).toDouble(),
      fullDivisionRateWithTax: (json['fullDivisionRateWithTax'] as num)
          .toDouble(),
    );

Map<String, dynamic> _$$DivisionResultImplToJson(
  _$DivisionResultImpl instance,
) => <String, dynamic>{
  'division': instance.division,
  'clearDivisionRate': instance.clearDivisionRate,
  'fullDivisionRate': instance.fullDivisionRate,
  'fullDivisionRateWithTax': instance.fullDivisionRateWithTax,
};
