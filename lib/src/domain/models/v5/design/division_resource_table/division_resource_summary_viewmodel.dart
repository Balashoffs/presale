import 'package:flutter/material.dart';
import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_with_resources_dto.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/extensions.dart';

class DivisionResourceSummaryViewController {
  final List<DivisionDTO> allDivisions = [];

  final ValueNotifier<List<DivisionWithResourceRowVM>> selectedRows =
      ValueNotifier([]);
  final Map<String, List<ResourceDTO>> _resources = {};
  final ValueNotifier<double> summaryVN = ValueNotifier(0.0);
  final ValueNotifier<bool> isValid = ValueNotifier(false);

  double _squareFactor = 0.0;
  double _complexityFactor = 0.0;
  final DesignOfferCalculator _designOfferCalculator = DesignOfferCalculator();

  double get summaryCost => selectedRows.value.isNotEmpty
      ? selectedRows.value
            .map((e) => e.totalResourceRowCostVN.value)
            .reduce((value, element) => value + element)
      : 0.0;

  bool get _isEmptyCostHas =>
      selectedRows.value.isNotEmpty &&
      selectedRows.value
          .where(
            (element) =>
                element.totalResourceRowCostVN.value.compareTo(0.0) == 0,
          )
          .isEmpty;

  DivisionWithResourceRowVM? getById(int id) {
    return allDivisions
        .where((element) => element.id == id)
        .map(
          (e) => e.toDivisionResourceRowVM(
            squareFactor: _squareFactor,
            complexityFactor: _complexityFactor,
          ),
        )
        .firstOrNull;
  }

  DivisionWithResourceRowVM? getByIdVM(int id) {
    return selectedRows.value.where((element) => element.id == id).firstOrNull;
  }

  void fill(
    DivisionWithResourceDTO divisionWithResourceDTO,
    InputDataDesign inputDataDesign,
  ) {
    _squareFactor = inputDataDesign.inputFactors.squareFactor;
    _complexityFactor = inputDataDesign.inputFactors.complexityFactor;
    _resources.addAll(divisionWithResourceDTO.resources);
    allDivisions.addAll(divisionWithResourceDTO.divisions);
  }

  List<ResourceDTO> resourcesByDivisionShortName(String divisionShortName) =>
      _resources[divisionShortName] ?? [];

  void onRowAction(int id, WidgetActionType type) {
    switch (type) {
      case WidgetActionType.add:
        _onAdd(id);
      case WidgetActionType.delete:
        _onDelete(id);
    }
    isValid.value = _isEmptyCostHas;
    summaryVN.value = summaryCost;
  }

  void _onAdd(int id) {
    DivisionWithResourceRowVM? found = getById(id);
    if (found != null) {
      //TODO Add algorithm to remove from unselected
      selectedRows.value = [...selectedRows.value, found];
    }
  }

  void _onDelete(int id) {
    DivisionWithResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      final updates = List<DivisionWithResourceRowVM>.from(selectedRows.value);
      updates.removeWhere((element) => element.id == id);
      selectedRows.value = [...updates];
      //TODO Add algorithm to remove from unselected
    }
  }

  void onResourceName(int id, String resourceName) {
    DivisionWithResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      if (resourceName.isEmpty) {
        found.resourceNameVN.value = '';
        found.resourceCostPerDayVN.value = 0.0;
      }
      ResourceDTO? foundResource = _resources[found.divisionShortName]
          ?.where((element) => element.resourceName == resourceName)
          .firstOrNull;
      if (foundResource != null) {
        found.resourceNameVN.value = foundResource.resourceName;
        found.resourceCostPerDayVN.value = foundResource.resourceCostPerDay;
        _calcResourceTotal(found);
      }
    }
  }

  void onComplexFactor(int id, double value) {
    DivisionWithResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.complexFactor = value;
    }
  }

  void onSquareFactor(int id, double value) {
    DivisionWithResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.squareFactor = value;
      _calcResourceTotal(found);
    }
  }

  void onResourceQnt(int id, int value) {
    DivisionWithResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.resourceQnt = value;
      _calcResourceTotal(found);
    }
  }

  void onResourceUsingFactor(int id, double value) {
    DivisionWithResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.resourceUsingFactor = value;
      _calcResourceTotal(found);
    }
  }

  void onWorkDays(int id, int value) {
    DivisionWithResourceRowVM? found = getByIdVM(id);
    if (found != null) {
      found.workDays = value;
      _calcResourceTotal(found);
    }
  }

  _calcResourceTotal(DivisionWithResourceRowVM value) {
    double total = _designOfferCalculator.calcResourceCost(value);
    if (total.compareTo(0.0) > 0) {
      value.totalResourceRowCostVN.value = total;
      summaryVN.value = summaryCost;
      isValid.value = _isEmptyCostHas;
    }
  }
}
