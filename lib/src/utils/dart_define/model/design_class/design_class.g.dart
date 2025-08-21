// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design_class.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DesignClassImpl _$$DesignClassImplFromJson(Map<String, dynamic> json) =>
    _$DesignClassImpl(
      resources: json['resources'] as String,
      workDivisions: json['job_divisions'] as String,
      projectDivisions: json['project_divisions'] as String,
      sign: json['sign'] as String?,
    );

Map<String, dynamic> _$$DesignClassImplToJson(_$DesignClassImpl instance) =>
    <String, dynamic>{
      'resources': instance.resources,
      'job_divisions': instance.workDivisions,
      'project_divisions': instance.projectDivisions,
      'sign': instance.sign,
    };
