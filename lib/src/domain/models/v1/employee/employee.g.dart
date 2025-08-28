// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Employee _$EmployeeFromJson(Map<String, dynamic> json) => _Employee(
  uuid: json['uuid'] as String,
  name: json['name'] as String,
  salary: (json['salary'] as num).toDouble(),
);

Map<String, dynamic> _$EmployeeToJson(_Employee instance) => <String, dynamic>{
  'uuid': instance.uuid,
  'name': instance.name,
  'salary': instance.salary,
};
