import 'package:flutter/material.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_viewmodel.dart';

class DivisionResourceSummaryViewModel {
  final String divisionType;
  final ValueNotifier<Map<String, DivisionResourceRowViewModel>>
  _selfCostSummaryOfDivisions = ValueNotifier({});

  final ValueNotifier<double> summary = ValueNotifier(0.0);

  List<DivisionResourceRowViewModel> get rows =>
      _selfCostSummaryOfDivisions.value.values.toList();

  DivisionResourceSummaryViewModel({required this.divisionType}) {
    _selfCostSummaryOfDivisions.addListener(_listener);
  }

  void addNewDivisionResourceCost(
    String resource,
    DivisionResourceRowViewModel value,
  ) {
    _selfCostSummaryOfDivisions.value.putIfAbsent(resource, () => value);
    value.summaryResourceRowCostVN.addListener(_listener);
  }

  void removeDivisionResourceCost(String resource) {
    _selfCostSummaryOfDivisions.value.remove(resource);
  }

  void _listener() {
    double rawSummary = _selfCostSummaryOfDivisions.value.values
        .map((e) => e.summaryResourceRowCostVN.value)
        .reduce((value, element) => value + element);

    summary.value = double.parse(rawSummary.toStringAsFixed(2));
  }
}
