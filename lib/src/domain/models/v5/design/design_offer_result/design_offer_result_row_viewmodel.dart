import 'package:presale/src/data/core/string_converter.dart';

class DesignOfferResultRowVM{
  final int id;
  final String divisionShortName;
  final String divisionName;
  String get divisionSummaryWithTaxS => convertToString(divisionSummaryWithTax, 0);
  final double divisionSummaryWithTax;

  const DesignOfferResultRowVM({
    required this.id,
    required this.divisionShortName,
    required this.divisionName,
    required this.divisionSummaryWithTax,
  });
}

