// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionResultImpl _$$DivisionResultImplFromJson(Map<String, dynamic> json) =>
    _$DivisionResultImpl(
      id: (json['id'] as num).toInt(),
      divisionSortName: json['divisionSortName'] as String,
      divisionName: json['divisionName'] as String,
      divisionSummaryWithTax: (json['divisionSummaryWithTax'] as num)
          .toDouble(),
      divisionSummaryTax: (json['divisionSummaryTax'] as num).toDouble(),
    );

Map<String, dynamic> _$$DivisionResultImplToJson(
  _$DivisionResultImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'divisionSortName': instance.divisionSortName,
  'divisionName': instance.divisionName,
  'divisionSummaryWithTax': instance.divisionSummaryWithTax,
  'divisionSummaryTax': instance.divisionSummaryTax,
};
