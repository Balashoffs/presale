import 'package:flutter/material.dart';
import 'package:presale/src/data/v3/design_calculator.dart';
import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dropdown_viewmodel.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/extensions.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/widget_action_type.dart';

class DivisionResourceSummaryViewModel extends ChangeNotifier {
  final List<DivisionResourceRowVM> _divisionResourceRowVM = [];

  List<DivisionResourceRowVM> get divisionResourceRowViewModel =>
      _divisionResourceRowVM;

  final ValueNotifier<DivisionResourceRowVM_VN?> divisionResourceRowVM_VN = ValueNotifier(null);

  final ValueNotifier<double> summary = ValueNotifier(0.0);

  final DropDownDivisionResourceProvider _divisionResourceProvider;

  List<toDropdownViewModel> get notSelected =>
      _divisionResourceProvider.notSelected;

  DivisionResourceRowVM_VN? get vn => divisionResourceRowVM_VN.value;

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
        _onAdd(id);
      case WidgetActionType.delete:
        _onDelete(id);
      case WidgetActionType.edit:
        _onUpdate(id);
    }
  }

  void _onAdd(int selected) {
    if (vn != null) {
      _divisionResourceRowVM.add(
        vn!.toRowViewModel(),
      );
    }

    DivisionResourceRowVM_VN? forAdding = _divisionResourceProvider.onSelected(
      selected,
    );
    if (forAdding != null) {
      print(forAdding);
      divisionResourceRowVM_VN.value?.clear();
      divisionResourceRowVM_VN.value = forAdding;
      notifyListeners();
    }
  }

  void _onDelete(int unSelected) {
    _divisionResourceProvider.onUnSelected(unSelected);
    _divisionResourceRowVM.removeWhere((element) => element.id == unSelected);
    divisionResourceRowVM_VN.value = null;
    notifyListeners();
  }

  void _onUpdate(id) {
    if (vn != null) {
      DivisionResourceRowVM divisionResourceRowVM = vn!
          .toRowViewModel();
      _divisionResourceRowVM.add(divisionResourceRowVM);
    }
    DivisionResourceRowVM? forEditing = _divisionResourceRowVM
        .where((element) => element.id == id)
        .firstOrNull;
    if (forEditing != null) {
      divisionResourceRowVM_VN.value?.clear();
      divisionResourceRowVM_VN.value = null;
      divisionResourceRowVM_VN.value = _divisionResourceProvider.buildFromModel(
        forEditing,
      );
      _divisionResourceRowVM.removeWhere((element) => element.id == id);
      notifyListeners();
    }
  }

  void _listener() {
    double rawSummary = _divisionResourceRowVM.isNotEmpty
        ? _divisionResourceRowVM
              .map((e) => e.summaryResourceRowCost)
              .reduce((value, element) => value + element)
        : 0.0;
    summary.value = double.parse(rawSummary.toStringAsFixed(2));
  }
}

class DropDownDivisionResourceProvider {
  final Map<DivisionResourceDTO, bool> _divisionResource = {};

  List<toDropdownViewModel> get notSelected => _divisionResource
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

  DivisionResourceRowVM_VN? onSelected(int id) {
    DivisionResourceDTO? found = _divisionResource.keys
        .where((element) => element.id == id)
        .firstOrNull;
    if (found != null) {
      _divisionResource[found] = true;
      return buildFromDTO(found);
    }
    return null;
  }

  DivisionResourceRowVM_VN buildFromDTO(DivisionResourceDTO found) =>
      found.toRowViewModel(_inputDataDesign!, _calculator);

  DivisionResourceRowVM_VN buildFromModel(DivisionResourceRowVM found) =>
      found.toDivisionResourceViewModel(_inputDataDesign!, _calculator);

  void onUnSelected(int id) {
    DivisionResourceDTO? found = _divisionResource.keys
        .where((element) => element.id == id)
        .firstOrNull;
    if (found != null) {
      _divisionResource[found] = false;
    }
  }
}
