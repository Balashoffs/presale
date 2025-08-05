import 'package:flutter/cupertino.dart';

class DivisionsWithMarginRowVM {
  final int id;
  final String divisionName;
  final String divisionShortName;
  final double divisionSummaryCost;
  double overPriceFactor;
  double marginFactor;
  final ValueNotifier<double> summaryOverPriceVN;
  final ValueNotifier<double> summaryCostWithMarginVN;
  final ValueNotifier<double> summaryCostWithTaxVN;
  final ValueNotifier<double> taxCost;

  DivisionsWithMarginRowVM({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.divisionSummaryCost,
  }) : overPriceFactor = 0.8,
       marginFactor = 1.2,
       taxCost = ValueNotifier<double>(0.0),
       summaryCostWithMarginVN = ValueNotifier(0.0),
       summaryOverPriceVN = ValueNotifier(0.0),
       summaryCostWithTaxVN = ValueNotifier(0.0);
}
