import 'package:flutter/material.dart';
import 'package:presale/src/presentation/modules/construction/stages_selector/model/selected_item/selected_item.dart';

class MultiValueNotifierDropDown extends ChangeNotifier {
  bool _showChoices;

  bool get showChoices => _showChoices;

  final Map<String, StagesSelectorSelectedItem> _availableChoices = {};


    MultiValueNotifierDropDown({
    required List<StagesSelectorSelectedItem> infos,
  }) : _showChoices = false {
    _fill(infos);
  }

  void _fill(List<StagesSelectorSelectedItem> items) {
    for (var value in items) {
      _availableChoices.putIfAbsent(
        value.id,
            () => value,
      );
    }
  }

  bool get isLeading =>
      _availableChoices.values.any((element) => element.isSelected == true);

  int get totalSelected =>
      _availableChoices.values.where((element) => element.isSelected == true).length;

  int get total => _availableChoices.length;

  void clearAllSelected() {
    _availableChoices.updateAll(
          (key, value) => value.copyWith(isSelected: false),
    );
    notifyListeners();
  }

  List<StagesSelectorSelectedItem> get items => _availableChoices.values.toList();

  Set<String> selected(String checked) {
    StagesSelectorSelectedItem checkedItem = _availableChoices[checked]!;
    checkedItem = checkedItem.copyWith(isSelected: !checkedItem.isSelected);
    _availableChoices[checked] = checkedItem;
    return _availableChoices.entries
        .where(
          (element) => element.value.isSelected == true,
    )
        .map(
          (e) => e.key,
    )
        .toSet();
  }

  bool isSelected(String key) => _availableChoices[key]?.isSelected ?? false;

  void onCheck() {
    notifyListeners();
  }

  void onTap() {
    _showChoices = !_showChoices;
    notifyListeners();
  }

  void tapOutside() {
    _showChoices = false;
    notifyListeners();
  }
}


class MultiCustomValueNotifierDropDown extends ChangeNotifier {
  bool _showChoices;

  bool get showChoices => _showChoices;

  final List<String> _inputData;
  final Map<String, bool> _availableChoices = {};

  Map<String, bool> get availableChoices => _availableChoices;

  MultiCustomValueNotifierDropDown({
    required List<String> inputData,
  })  : _inputData = inputData,
        _showChoices = false {
    _fill(_inputData);
  }

  void _fill(List<String> items) {
    for (var value in items) {
      _availableChoices.putIfAbsent(
        value,
            () => false,
      );
    }
  }

  bool get isLeading =>
      _availableChoices.values.any((element) => element == true);

  int get totalSelected =>
      _availableChoices.values.where((element) => element == true).length;

  void clearAllSelected() {
    _availableChoices.updateAll(
          (key, value) => false,
    );
    notifyListeners();
  }

  List<String> get items => _availableChoices.keys.toList();

  Set<String> selected(String checked) {
    _availableChoices[checked] = !_availableChoices[checked]!;
    return _availableChoices.entries
        .where(
          (element) => element.value == true,
    )
        .map(
          (e) => e.key,
    )
        .toSet();
  }

  bool isSelected(String key) => _availableChoices[key] ?? false;

  void onCheck(String key) {
    notifyListeners();
  }

  void onTap() {
    _showChoices = !_showChoices;
    notifyListeners();
  }

  void tapOutside() {
    _showChoices = false;
    notifyListeners();
  }
}