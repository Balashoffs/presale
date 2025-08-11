// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_resource_table_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionResourceTableWithTypePojoImpl
_$$DivisionResourceTableWithTypePojoImplFromJson(Map<String, dynamic> json) =>
    _$DivisionResourceTableWithTypePojoImpl(
      divisionType: $enumDecode(_$DivisionTypeEnumMap, json['divisionType']),
      rows: (json['rows'] as List<dynamic>)
          .map(
            (e) => DivisionResourceRowPojo.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
    );

Map<String, dynamic> _$$DivisionResourceTableWithTypePojoImplToJson(
  _$DivisionResourceTableWithTypePojoImpl instance,
) => <String, dynamic>{
  'divisionType': _$DivisionTypeEnumMap[instance.divisionType]!,
  'rows': instance.rows,
};

const _$DivisionTypeEnumMap = {
  DivisionType.project: 'project',
  DivisionType.working: 'working',
};
