// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SectionData _$SectionDataFromJson(Map<String, dynamic> json) => _SectionData(
  id: json['id'] as String,
  parentId: json['parentId'] as String,
  className: json['className'] as String,
  typeName: json['typeName'] as String,
  subtypeName: json['subtypeName'] as String,
  um: json['um'] as String,
  costRange: json['costRange'] as String,
  cost: (json['cost'] as num).toDouble(),
  jobCosts: (json['jobCosts'] as List<dynamic>)
      .map((e) => CostStruct.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$SectionDataToJson(_SectionData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parentId': instance.parentId,
      'className': instance.className,
      'typeName': instance.typeName,
      'subtypeName': instance.subtypeName,
      'um': instance.um,
      'costRange': instance.costRange,
      'cost': instance.cost,
      'jobCosts': instance.jobCosts,
    };
