import 'package:flutter/material.dart';
import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/extensions.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';

class DivisionWithResourceSummaryVM {
  final List<DivisionResourceRowVM> unselectedRows = [];
  final ValueNotifier<List<DivisionResourceRowVM>> selectedRows = ValueNotifier(
    [],
  );
  final ValueNotifier<double> summaryVN = ValueNotifier(0.0);

  final DesignOfferCalculator _designOfferCalculator = DesignOfferCalculator();

  double get summaryCost => selectedRows.value.isNotEmpty
      ? selectedRows.value
      .map((e) => e.totalResourceRowCostVN.value)
      .reduce((value, element) => value + element)
      : 0.0;

  DivisionResourceRowVM? getById(int id) {
    return unselectedRows.where((element) => element.id == id).firstOrNull;
  }

  DivisionResourceRowVM? getByIdVM(int id) {
    return selectedRows.value.where((element) => element.id == id).firstOrNull;
  }

  void fill(List<DivisionResourceDTO> inputs, InputDataDesign inputDataDesign) {
    unselectedRows.addAll(
      inputs.map((e) => e.toDivisionResourceRowVM(inputDataDesign)).toList(),
    );
  }

  void onRowAction(int id, WidgetActionType type) {
    switch (type) {
      case WidgetActionType.add:
        _onAdd(id);
      case WidgetActionType.delete:
        _onDelete(id);
    }
  }

  void _onAdd(int id) {
    DivisionResourceRowVM? found = getById(id);
    if (found != null) {
      unselectedRows.removeWhere((element) => element.id == id);
      selectedRows.value = [found, ...selectedRows.value];
    }
  }

  void _onDelete(int id) {
    print('_onDelete');
    print(id);
    DivisionResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      final updates = List<DivisionResourceRowVM>.from(selectedRows.value);
      updates.removeWhere((element) => element.id == id);
      selectedRows.value = [...updates];
      unselectedRows.add(found);
      _calcResourceTotal(found);
      summaryVN.value = summaryCost;
    }
  }

  /*
    complexFactor
    squareFactor
    resourceQnt
    resourceUsingFactor
    summaryResourceRowCost
    workDays
   */
  void onComplexFactor(int id, double value) {
    DivisionResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.complexFactor = value;
      _calcResourceTotal(found);
    }
  }

  void onSquareFactor(int id, double value) {
    DivisionResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.squareFactor = value;
      _calcResourceTotal(found);
    }
  }

  void onResourceQnt(int id, int value) {
    DivisionResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.resourceQnt = value;
      _calcResourceTotal(found);
    }
  }

  void onResourceUsingFactor(int id, double value) {
    DivisionResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.resourceUsingFactor = value;
      _calcResourceTotal(found);
    }
  }

  void onWorkDays(int id, int value) {
    DivisionResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      print('onWorkDays: found DivisionResourceRowVM');
      print('onWorkDays: ${found.toString()}');
      found.workDays = value;
      _calcResourceTotal(found);
    }
  }

  _calcResourceTotal(DivisionResourceRowVM value) {
    double total = _designOfferCalculator.calcDivisionTotalV4(value);
    if (total.compareTo(0.0) > 0) {
      print('onWorkDays: calc _calcResourceTotal');
      print('onWorkDays: ${total.toString()}');
      value.totalResourceRowCostVN.value = total;
      summaryVN.value = summaryCost;
    }
  }
}
