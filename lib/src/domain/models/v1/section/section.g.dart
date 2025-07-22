// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectionImpl _$$SectionImplFromJson(Map<String, dynamic> json) =>
    _$SectionImpl(
      stage: $enumDecode(_$ServiceStageEnumMap, json['stage']),
      name: json['name'] as String,
      shortName: json['shortName'] as String?,
      employeeString: json['employeeString'] as String,
      employee: json['employee'] == null
          ? null
          : Employee.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SectionImplToJson(_$SectionImpl instance) =>
    <String, dynamic>{
      'stage': _$ServiceStageEnumMap[instance.stage]!,
      'name': instance.name,
      'shortName': instance.shortName,
      'employeeString': instance.employeeString,
      'employee': instance.employee,
    };

const _$ServiceStageEnumMap = {
  ServiceStage.project: 'project',
  ServiceStage.working: 'working',
  ServiceStage.both: 'both',
};
