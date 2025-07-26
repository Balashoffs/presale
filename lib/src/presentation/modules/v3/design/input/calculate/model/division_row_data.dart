import 'package:flutter/foundation.dart';
import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v3/design/custom_fuctors/custom_factors.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';

class DivisionRowData {
  final String divisionName;
  final String divisionShortName;
  final double hardFactor;
  final double squareFactor;
  final double userUsingFactor;
  final double userSalaryPerDay;
  final int deadline;
  final double summary;
  final double overPriceFactor;
  final double marginFactor;
  final double summaryWithTax;

  DivisionRowData({
    required this.divisionName,
    required this.divisionShortName,
    required this.hardFactor,
    required this.squareFactor,
    required this.userUsingFactor,
    required this.userSalaryPerDay,
    required this.deadline,
    required this.summary,
    required this.overPriceFactor,
    required this.marginFactor,
    required this.summaryWithTax,
  });
}

class DivisionRowDataValueChangeNotifier extends ChangeNotifier {
  final Division data;
  final DesignOfferCalculator calculator;

  final ValueNotifier<double> hardFactor = ValueNotifier(1.0);
  final ValueNotifier<double> squareFactor = ValueNotifier(1.0);
  final ValueNotifier<double> userUsingFactor = ValueNotifier(1.0);
  final ValueNotifier<double> deadline = ValueNotifier(0.0);

  final ValueNotifier<double> overPriceFactor = ValueNotifier(0.3);
  final ValueNotifier<double> marginFactor = ValueNotifier(0.3);

  final ValueNotifier<double> costPrice = ValueNotifier(0.0);
  final ValueNotifier<double> costWithMargin = ValueNotifier(0.0);
  final ValueNotifier<double> costWithTax = ValueNotifier(0.0);


  DivisionRowDataValueChangeNotifier({
    required this.data,
    required this.calculator,
  }) {
    hardFactor.addListener(listenerInputData);
    squareFactor.addListener(listenerInputData);
    userUsingFactor.addListener(listenerInputData);
    deadline.addListener(listenerInputData);
    overPriceFactor.addListener(listenerSummaryWithTaxData);
    marginFactor.addListener(listenerSummaryWithTaxData);
    costPrice.addListener(listenerSummaryWithTaxData);
    costWithMargin.addListener(listenerSummaryWithTaxData);
    listenerInputData();
  }

  void listenerInputData() {
    double result = calculator.calcClearCost(this);
    costPrice.value = result;
    notifyListeners();
  }

  void listenerSummaryWithTaxData() {
    double result = calculator.calcWithMargin(this);
    costWithMargin.value = result;
    costWithTax.value = costWithMargin.value * RussianTax + costPrice.value;
    notifyListeners();
  }
}

@kDebugMode
DivisionRowData generateTestInstance() {
  return DivisionRowData(
    divisionName: "Конструктивные решения. Железобетонные конструкции",
    divisionShortName: "КЖ",
    hardFactor: 100,
    squareFactor: 100,
    userUsingFactor: 100,
    userSalaryPerDay: 10000.0,
    deadline: 365,
    summary: 100000,
    overPriceFactor: 100,
    marginFactor: 100,
    summaryWithTax: 10000000,
  );
}
