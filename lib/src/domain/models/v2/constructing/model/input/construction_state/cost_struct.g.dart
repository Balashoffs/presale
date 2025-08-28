// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_struct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CostStruct _$CostStructFromJson(Map<String, dynamic> json) => _CostStruct(
  jobFactor: (json['jobFactor'] as num).toDouble(),
  jobName: json['jobName'] as String,
);

Map<String, dynamic> _$CostStructToJson(_CostStruct instance) =>
    <String, dynamic>{
      'jobFactor': instance.jobFactor,
      'jobName': instance.jobName,
    };
