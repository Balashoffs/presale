// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cost_struct.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CostStructImpl _$$CostStructImplFromJson(Map<String, dynamic> json) =>
    _$CostStructImpl(
      jobFactor: (json['jobFactor'] as num).toDouble(),
      jobName: json['jobName'] as String,
    );

Map<String, dynamic> _$$CostStructImplToJson(_$CostStructImpl instance) =>
    <String, dynamic>{
      'jobFactor': instance.jobFactor,
      'jobName': instance.jobName,
    };
