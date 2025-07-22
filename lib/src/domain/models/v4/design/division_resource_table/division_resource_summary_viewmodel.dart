import 'package:flutter/material.dart';

class DivisionResourceSummaryViewModel extends ChangeNotifier {
  final ValueNotifier<Map<String, double>> selfCostSummaryOfDivisions =
      ValueNotifier({});
  double _summary = 0.0;

  double get summary => _summary;

  void addNewDivisionResourceCost(String resource, double value) {
    selfCostSummaryOfDivisions.value.putIfAbsent(resource, () => value);
  }

  void updateNewDivisionResourceCost(String resource, double value) {
    selfCostSummaryOfDivisions.value.update(resource, (value) => value);
  }

  void removeDivisionResourceCost(String resource, double value) {
    selfCostSummaryOfDivisions.value.remove(resource);
  }

  void _listener() {
    _summary = selfCostSummaryOfDivisions.value.values.reduce(
      (value, element) => value + element,
    );
    notifyListeners();
  }
}
