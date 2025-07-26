import 'package:flutter/material.dart';
import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dropdown_viewmodel.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/extensions.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';

class DivisionResourceSummaryViewModel extends ChangeNotifier {
  final List<DivisionResourceRowViewModel> _divisionResourceRowViewModel = [];

  List<DivisionResourceRowViewModel> get divisionResourceRowViewModel =>
      _divisionResourceRowViewModel;

  DivisionResourceRowViewModelWithValueNotifier?
  _divisionResourceRowViewModelWithValueNotifierVN;

  DivisionResourceRowViewModelWithValueNotifier?
  get divisionResourceRowViewModelWithValueNotifierVN =>
      _divisionResourceRowViewModelWithValueNotifierVN;

  final ValueNotifier<double> summary = ValueNotifier(0.0);

  final DropDownDivisionResourceProvider _divisionResourceProvider;

  List<DivisionResourceDropdownViewModel> get notSelected =>
      _divisionResourceProvider.notSelected;

  DivisionResourceSummaryViewModel()
    : _divisionResourceProvider = DropDownDivisionResourceProvider() {
    addListener(_listener);
  }

  void fill(List<DivisionResourceDTO> inputs, InputDataDesign inputDataDesign) {
    _divisionResourceProvider.fill(inputs, inputDataDesign);
    notifyListeners();
  }

  void onRowAction(int id, WidgetActionType type) {
    switch (type) {
      case WidgetActionType.add:
        _onSelected(id);
      case WidgetActionType.delete:
        _onUnSelected(id);
      case WidgetActionType.edit:
        _onEdit(id);
    }
  }

  void _onEdit(id) {
    if (_divisionResourceRowViewModelWithValueNotifierVN != null) {
      DivisionResourceRowViewModel divisionResourceRowViewModel =
          _divisionResourceRowViewModelWithValueNotifierVN!
              .toDivisionResourceRowViewModel();
      _divisionResourceRowViewModel.add(divisionResourceRowViewModel);
      _divisionResourceRowViewModelWithValueNotifierVN = null;
    }
    DivisionResourceRowViewModel? found = _divisionResourceRowViewModel
        .where((element) => element.id == id)
        .firstOrNull;
    if (found != null) {
      DivisionResourceDTO? foundDR = _divisionResourceProvider?.byId(id);
      if (foundDR != null) {
        _divisionResourceRowViewModelWithValueNotifierVN =
            _divisionResourceProvider.build(foundDR);
        _divisionResourceRowViewModel.remove(found);
        notifyListeners();
      }
    }
  }

  void _onSelected(int selected) {
    DivisionResourceRowViewModelWithValueNotifier? found =
        _divisionResourceProvider?.onSelected(selected);
    if (found != null) {
      if (_divisionResourceRowViewModelWithValueNotifierVN != null) {
        _divisionResourceRowViewModel.add(
          _divisionResourceRowViewModelWithValueNotifierVN!
              .toDivisionResourceRowViewModel(),
        );
      }
      _divisionResourceRowViewModelWithValueNotifierVN = found;
      notifyListeners();
    }
  }

  void _onUnSelected(int unSelected) {
    _divisionResourceRowViewModelWithValueNotifierVN?.clear();
    _divisionResourceRowViewModelWithValueNotifierVN = null;
    _divisionResourceProvider?.onUnSelected(unSelected);
    _divisionResourceRowViewModel.removeWhere(
      (element) => element.id == unSelected,
    );
    notifyListeners();
  }

  void _listener() {
    double rawSummary = _divisionResourceRowViewModel.isNotEmpty
        ? _divisionResourceRowViewModel
              .map((e) => e.summaryResourceRowCost ?? 0.0)
              .reduce((value, element) => value + element)
        : 0.0;
    summary.value = double.parse(rawSummary.toStringAsFixed(2));
  }
}

class DropDownDivisionResourceProvider {
  final Map<DivisionResourceDTO, bool> _divisionResource = {};

  List<DivisionResourceDropdownViewModel> get notSelected => _divisionResource
      .entries
      .where((element) => element.value == false)
      .map((e) => e.key)
      .map((e) => e.toDropDownViewModel())
      .toList();

  DivisionResourceDTO? byId(int id) =>
      _divisionResource.keys.where((element) => element.id == id).firstOrNull;

  final DesignOfferCalculator _calculator = DesignOfferCalculator();
  late final InputDataDesign? _inputDataDesign;

  void fill(List<DivisionResourceDTO> inputs, InputDataDesign id) {
    _inputDataDesign = id;
    for (var element in inputs) {
      _divisionResource[element] = false;
    }
  }

  DivisionResourceRowViewModelWithValueNotifier? onSelected(int id) {
    DivisionResourceDTO? found = _divisionResource.keys
        .where((element) => element.id == id)
        .firstOrNull;
    if (found != null) {
      _divisionResource[found] = true;
      return build(found);
    }
    return null;
  }

  DivisionResourceRowViewModelWithValueNotifier build(
    DivisionResourceDTO found,
  ) => found.toDivisionResourceViewModel(_inputDataDesign!, _calculator);

  void onUnSelected(int id) {
    DivisionResourceDTO? found = _divisionResource.keys
        .where((element) => element.id == id)
        .firstOrNull;
    if (found != null) {
      _divisionResource[found] = false;
    }
  }
}
