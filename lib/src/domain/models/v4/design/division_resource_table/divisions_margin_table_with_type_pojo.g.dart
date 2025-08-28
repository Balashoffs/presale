// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'divisions_margin_table_with_type_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DivisionsMarginTableWithTypePojo _$DivisionsMarginTableWithTypePojoFromJson(
  Map<String, dynamic> json,
) => _DivisionsMarginTableWithTypePojo(
  divisionType: $enumDecode(_$DivisionTypeEnumMap, json['divisionType']),
  rows: (json['rows'] as List<dynamic>)
      .map((e) => DivisionsMarginRowPojo.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$DivisionsMarginTableWithTypePojoToJson(
  _DivisionsMarginTableWithTypePojo instance,
) => <String, dynamic>{
  'divisionType': _$DivisionTypeEnumMap[instance.divisionType]!,
  'rows': instance.rows,
};

const _$DivisionTypeEnumMap = {
  DivisionType.project: 'project',
  DivisionType.working: 'working',
};
