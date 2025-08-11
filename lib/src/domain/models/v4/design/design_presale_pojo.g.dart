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
  resource: json['resource'] == null
      ? null
      : DivisionResourceTableWithTypePojo.fromJson(
          json['resource'] as Map<String, dynamic>,
        ),
  divisions: json['divisions'] == null
      ? null
      : DivisionsMarginTableWithTypePojo.fromJson(
          json['divisions'] as Map<String, dynamic>,
        ),
  offers: json['offers'] == null
      ? null
      : CommercialOfferResult.fromJson(json['offers'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$DesignPresalePojoImplToJson(
  _$DesignPresalePojoImpl instance,
) => <String, dynamic>{
  'inputDataDesign': instance.inputDataDesign,
  'resource': instance.resource,
  'divisions': instance.divisions,
  'offers': instance.offers,
};
