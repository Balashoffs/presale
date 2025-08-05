// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'commercial_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommercialOfferResultImpl _$$CommercialOfferResultImplFromJson(
  Map<String, dynamic> json,
) => _$CommercialOfferResultImpl(
  objectData: ObjectDataDesign.fromJson(
    json['objectData'] as Map<String, dynamic>,
  ),
  divisionResults: (json['divisionResults'] as List<dynamic>)
      .map((e) => DivisionResult.fromJson(e as Map<String, dynamic>))
      .toList(),
  designOfferSummaryCost: (json['designOfferSummaryCost'] as num).toDouble(),
  designOfferSummaryTax: (json['designOfferSummaryTax'] as num).toDouble(),
  footerData: FooterData.fromJson(json['footerData'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$CommercialOfferResultImplToJson(
  _$CommercialOfferResultImpl instance,
) => <String, dynamic>{
  'objectData': instance.objectData,
  'divisionResults': instance.divisionResults,
  'designOfferSummaryCost': instance.designOfferSummaryCost,
  'designOfferSummaryTax': instance.designOfferSummaryTax,
  'footerData': instance.footerData,
};
