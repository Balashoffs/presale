import 'package:flutter/material.dart';
import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_pojo.dart';
import 'package:presale/src/domain/models/v5/design/divisions_margin_table/division_with_margin_row_viewmodel.dart';

class DivisionsMarginSummaryViewModel {
  final List<DivisionsWithMarginRowVM> rows = [];
  final ValueNotifier<double> divisionClearSummaryVN = ValueNotifier(0.0);
  final ValueNotifier<double> divisionsWithMarginSummaryVN = ValueNotifier(0.0);
  final ValueNotifier<double> divisionsWithTaxSummaryVN = ValueNotifier(0.0);

  final DesignOfferCalculator _designOfferCalculator = DesignOfferCalculator();

  DivisionsWithMarginRowVM? getById(int id) =>
      rows.where((element) => element.id == id).firstOrNull;

  void fill(List<DivisionResourceRowPojo> divisionsByType) {
    List<String> divisionShortNames = divisionsByType
        .map((e) => e.divisionShortName)
        .toSet()
        .toList();
    for (int i = 0; i < divisionShortNames.length; i++) {
      double summary = divisionsByType
          .where(
            (element) => element.divisionShortName == divisionShortNames[i],
          )
          .map((e) => e.resourceSummaryCost)
          .reduce((value, element) => value + element);
      if (summary.compareTo(0.0) > 0) {
        DivisionResourceRowPojo? pojo = divisionsByType
            .where(
              (element) => element.divisionShortName == divisionShortNames[i],
            )
            .firstOrNull;
        if (pojo != null) {
          DivisionsWithMarginRowVM row = DivisionsWithMarginRowVM(
            id: i+1,
            divisionSummaryCost: summary,
            divisionName: pojo.divisionName,
            divisionShortName: pojo.divisionShortName,
          );
          _calcRowValues(row);
          rows.add(row);
        }
      }
    }

    divisionClearSummaryVN.value = rows
        .map((e) => e.divisionSummaryCost)
        .reduce((value, element) => value + element);

    _calcTotal();
  }

  /*
    complexFactor
    squareFactor
    resourceQnt
    resourceUsingFactor
    summaryResourceRowCost
    workDays
   */

  void onOverPriceFactor(int id, double value) {
    DivisionsWithMarginRowVM? found = getById(id);
    if (found != null) {
      found.overPriceFactor = value;
      _calcRowValues(found);
    }
    _calcTotal();
  }

  void onMarginFactor(int id, double value) {
    DivisionsWithMarginRowVM? found = getById(id);
    if (found != null) {
      found.marginFactor = value;
      _calcRowValues(found);
    }
    _calcTotal();
  }

  _calcRowValues(DivisionsWithMarginRowVM value) {
    _designOfferCalculator.calcDivisionCost(value);
  }

  void _calcTotal() {
    divisionsWithMarginSummaryVN.value = rows
        .map((e) => e.summaryCostWithMarginVN.value)
        .reduce((value, element) => value + element);
    divisionsWithTaxSummaryVN.value = rows
        .map((e) => e.summaryCostWithTaxVN.value)
        .reduce((value, element) => value + element);
  }
}
