// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionImpl _$$DivisionImplFromJson(Map<String, dynamic> json) =>
    _$DivisionImpl(
      type:
          $enumDecodeNullable(_$DivisionTypeEnumMap, json['type']) ??
          DivisionType.both,
      name: json['name'] as String,
      shortName: json['shortName'] as String,
      id: (json['id'] as num).toInt(),
      employee: EmployeeCost.fromJson(json['employee'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DivisionImplToJson(_$DivisionImpl instance) =>
    <String, dynamic>{
      'type': _$DivisionTypeEnumMap[instance.type]!,
      'name': instance.name,
      'shortName': instance.shortName,
      'id': instance.id,
      'employee': instance.employee,
    };

const _$DivisionTypeEnumMap = {
  DivisionType.project: 'project',
  DivisionType.both: 'both',
  DivisionType.working: 'working',
};
