// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Division _$DivisionFromJson(Map<String, dynamic> json) => _Division(
  type: $enumDecodeNullable(_$DivisionTypeEnumMap, json['type']),
  name: json['name'] as String,
  shortName: json['shortName'] as String,
  id: (json['id'] as num).toInt(),
  employee: EmployeeCost.fromJson(json['employee'] as Map<String, dynamic>),
);

Map<String, dynamic> _$DivisionToJson(_Division instance) => <String, dynamic>{
  'type': _$DivisionTypeEnumMap[instance.type],
  'name': instance.name,
  'shortName': instance.shortName,
  'id': instance.id,
  'employee': instance.employee,
};

const _$DivisionTypeEnumMap = {
  DivisionType.project: 'project',
  DivisionType.working: 'working',
};
