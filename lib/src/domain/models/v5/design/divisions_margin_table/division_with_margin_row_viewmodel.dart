import 'package:flutter/cupertino.dart';

class DivisionsWithMarginRowVM {
  final int id;
  final String divisionName;
  final String divisionShortName;
  final String divisionDescription;
  final double divisionSummaryCost;
  double overPriceFactor;
  double marginFactor;
  double clientFactor;

  double _overPriceValue = 0.8;

  set overPriceValue(double value) {
    _overPriceValue = value;
  }

  double get overPriceValue => _overPriceValue;

  double _marginValue = 1.2;

  set marginValue(double value) {
    _marginValue = value;
  }

  double get marginValue => _marginValue;

  double _clientValue = 1.0;

  set clientValue(double value) {
    _clientValue = value;
  }

  double get clientValue => _clientValue;

  final ValueNotifier<double> summaryCostWithMarginVN;
  final ValueNotifier<double> summaryCostWithTaxVN;

  double _taxValue = 0.0;

  set taxValue(double value) {
    _taxValue = value;
  }

  double get taxValue => _taxValue;

  DivisionsWithMarginRowVM({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.divisionDescription,
    required this.divisionSummaryCost,
  }) : overPriceFactor = 0.8,
       marginFactor = 1.2,
       clientFactor = 1.0,
       summaryCostWithMarginVN = ValueNotifier(0.0),
       summaryCostWithTaxVN = ValueNotifier(0.0);
}
