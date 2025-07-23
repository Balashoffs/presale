// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'division_resource_total_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DivisionResourceTotalPojoImpl _$$DivisionResourceTotalPojoImplFromJson(
  Map<String, dynamic> json,
) => _$DivisionResourceTotalPojoImpl(
  resorces:
      (json['resorces'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DivisionResourceTableWithTypePojo.fromJson(e as Map<String, dynamic>),
        ),
      ) ??
      const {},
);

Map<String, dynamic> _$$DivisionResourceTotalPojoImplToJson(
  _$DivisionResourceTotalPojoImpl instance,
) => <String, dynamic>{'resorces': instance.resorces};
