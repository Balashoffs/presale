import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v5/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v5/design/offer/commercial_offer/division_result/division_result.dart';
import 'package:presale/src/domain/models/v5/design/offer/commercial_offer/footer_data/footer_data.dart';

part 'commercial_offer.freezed.dart';
part 'commercial_offer.g.dart';


@freezed
class CommercialOfferResult with _$CommercialOfferResult {
  const factory CommercialOfferResult({
    required InputDataDesign inputDataDesign,
    required List<DivisionResult> divisionResults,
    required double designOfferSummaryCost,
    required double designOfferSummaryTax,
    required FooterData footerData,
  }) = _CommercialOfferResult;

  factory CommercialOfferResult.fromJson(Map<String, dynamic> json) =>
      _$CommercialOfferResultFromJson(json);
}

