// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_cost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeCostImpl _$$EmployeeCostImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeCostImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      workingRatePerDay: (json['workingRatePerDay'] as num).toDouble(),
      correctionFactor: (json['correctionFactor'] as num?)?.toDouble() ?? 1.0,
    );

Map<String, dynamic> _$$EmployeeCostImplToJson(_$EmployeeCostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'workingRatePerDay': instance.workingRatePerDay,
      'correctionFactor': instance.correctionFactor,
    };
