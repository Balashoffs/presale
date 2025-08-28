// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'design_presale_pojo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DesignPresalePojo _$DesignPresalePojoFromJson(Map<String, dynamic> json) =>
    _DesignPresalePojo(
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
          : CommercialOfferResult.fromJson(
              json['offers'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$DesignPresalePojoToJson(_DesignPresalePojo instance) =>
    <String, dynamic>{
      'inputDataDesign': instance.inputDataDesign,
      'resource': instance.resource,
      'divisions': instance.divisions,
      'offers': instance.offers,
    };
