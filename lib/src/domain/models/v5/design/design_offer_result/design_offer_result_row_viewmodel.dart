import 'package:presale/src/data/core/string_converter.dart';

class DesignOfferResultRowVM {
  final int id;
  final String divisionShortName;
  final String divisionName;
  final double overPrice;
  final double margin;
  final double client;

  String get divisionOverPriceS =>
      convertToString(overPrice, 0);

  String get divisionMarginS =>
      convertToString(margin, 0);

  String get divisionClientS =>
      convertToString(client, 0);

  String get divisionSummaryS =>
      convertToString(divisionSummary, 0);

  String get divisionSummaryWithTaxS =>
      convertToString(divisionSummaryWithTax, 0);


  final double divisionSummary;
  final double divisionSummaryWithTax;

  const DesignOfferResultRowVM({
    required this.id,
    required this.divisionShortName,
    required this.divisionName,
    required this.overPrice,
    required this.margin,
    required this.client,
    required this.divisionSummary,
    required this.divisionSummaryWithTax,
  });
}
