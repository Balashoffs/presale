// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DivisionResult _$DivisionResultFromJson(Map<String, dynamic> json) =>
    _DivisionResult(
      id: (json['id'] as num).toInt(),
      divisionShortName: json['divisionShortName'] as String,
      divisionName: json['divisionName'] as String,
      divisionOverPrice: (json['divisionOverPrice'] as num).toDouble(),
      divisionMargin: (json['divisionMargin'] as num).toDouble(),
      divisionClient: (json['divisionClient'] as num).toDouble(),
      divisionSummary: (json['divisionSummary'] as num).toDouble(),
      divisionSummaryWithTax: (json['divisionSummaryWithTax'] as num)
          .toDouble(),
    );

Map<String, dynamic> _$DivisionResultToJson(_DivisionResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'divisionShortName': instance.divisionShortName,
      'divisionName': instance.divisionName,
      'divisionOverPrice': instance.divisionOverPrice,
      'divisionMargin': instance.divisionMargin,
      'divisionClient': instance.divisionClient,
      'divisionSummary': instance.divisionSummary,
      'divisionSummaryWithTax': instance.divisionSummaryWithTax,
    };
