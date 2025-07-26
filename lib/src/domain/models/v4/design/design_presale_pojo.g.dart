// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design_presale_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DesignPresalePojoImpl _$$DesignPresalePojoImplFromJson(
  Map<String, dynamic> json,
) => _$DesignPresalePojoImpl(
  inputDataDesign: InputDataDesign.fromJson(
    json['inputDataDesign'] as Map<String, dynamic>,
  ),
  resource:
      (json['resource'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          DivisionResourceTableWithTypePojo.fromJson(e as Map<String, dynamic>),
        ),
      ) ??
      const {},
);

Map<String, dynamic> _$$DesignPresalePojoImplToJson(
  _$DesignPresalePojoImpl instance,
) => <String, dynamic>{
  'inputDataDesign': instance.inputDataDesign,
  'resource': instance.resource,
};
