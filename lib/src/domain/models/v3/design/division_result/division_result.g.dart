// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionResultImpl _$$DivisionResultImplFromJson(Map<String, dynamic> json) =>
    _$DivisionResultImpl(
      id: (json['id'] as num).toInt(),
      divisionShortName: json['divisionShortName'] as String,
      divisionName: json['divisionName'] as String,
      divisionSummaryWithTax: (json['divisionSummaryWithTax'] as num)
          .toDouble(),
      divisionSummaryWithMargin: (json['divisionSummaryWithMargin'] as num)
          .toDouble(),
    );

Map<String, dynamic> _$$DivisionResultImplToJson(
  _$DivisionResultImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'divisionShortName': instance.divisionShortName,
  'divisionName': instance.divisionName,
  'divisionSummaryWithTax': instance.divisionSummaryWithTax,
  'divisionSummaryWithMargin': instance.divisionSummaryWithMargin,
};
