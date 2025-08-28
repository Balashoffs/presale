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

  double _overPriceValue;

  set overPriceValue(double value) {
    _overPriceValue = value;
  }

  double get overPriceValue => _overPriceValue;

  double _marginValue;

  set marginValue(double value) {
    _marginValue = value;
  }

  double get marginValue => _marginValue;

  double _clientValue;

  set clientValue(double value) {
    _clientValue = value;
  }

  double get clientValue => _clientValue;

  final ValueNotifier<double> summaryCostWithMarginVN;
  final ValueNotifier<double> summaryCostWithTaxVN;

  double _taxValue;

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
    required this.overPriceFactor,
    required this.marginFactor,
    required this.clientFactor,
  }) : _taxValue = 0.0,
       _marginValue = 0.0,
       _clientValue = 0.0,
       _overPriceValue = 0.0,
       summaryCostWithMarginVN = ValueNotifier(0.0),
       summaryCostWithTaxVN = ValueNotifier(0.0);
}
