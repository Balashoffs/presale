import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v3/design/commercial_offer/footer_data.dart';
import 'package:presale/src/domain/models/v3/design/division_result/division_result.dart';
import 'package:presale/src/domain/models/v3/design/input_data/object_data_design.dart';

part 'commercial_offer.freezed.dart';
part 'commercial_offer.g.dart';


@freezed
class CommercialOfferResult with _$CommercialOfferResult {
  const factory CommercialOfferResult({
    required ObjectDataDesign objectData,
    required List<DivisionResult> divisionResults,
    required double designOfferSummaryCost,
    required double designOfferSummaryTax,
    required FooterData footerData,
  }) = _CommercialOfferResult;

  factory CommercialOfferResult.fromJson(Map<String, dynamic> json) =>
      _$CommercialOfferResultFromJson(json);
}

