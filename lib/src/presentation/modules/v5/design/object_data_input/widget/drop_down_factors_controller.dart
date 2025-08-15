import 'package:flutter/material.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor.dart' show InputBaseFactor;

class SingleObjectValueNotifierDropDown extends ChangeNotifier {
  bool _showMenu;

  bool get showMenu => _showMenu;

  final String _type;

  String get type => _type;
  final Map<InputBaseFactor, bool> _factors;

  SingleObjectValueNotifierDropDown({
    required MapEntry<String, List<InputBaseFactor>> baseFactors,
  }) : _factors = baseFactors.value.asMap().map(
        (index, item) => MapEntry(item, item.factor.compareTo(1.0) == 0),
  ),
        _type = baseFactors.key,
        _showMenu = false;

  InputBaseFactor get _selected =>
      _factors.entries.firstWhere((element) => element.value == true).key;

  String get selectedItems => _buildString(_selected);

  String _buildString(InputBaseFactor factor) =>
      '${factor.value} (${factor.factor})';

  List<String> get notSelected => _factors.entries
      .where((element) => element.value == false)
      .map((e) => _buildString(e.key))
      .toList();

  void selected(String value) {
    _factors.update(_selected, (value) => false);
    InputBaseFactor ibf = _factors.entries
        .firstWhere((entry) => value.contains(entry.key.value))
        .key;
    _factors.update(ibf, (value) => true);
    _showMenu = false;
    notifyListeners();
  }

  void onTap() {
    _showMenu = !_showMenu;
    notifyListeners();
  }

  void tapOutside() {
    _showMenu = false;
    notifyListeners();
  }
}

class MultiObjectValueNotifierDropDown extends ChangeNotifier {
  bool _showChoices;

  bool get showChoices => _showChoices;

  final List<String> _inputData;
  final Map<String, bool> _availableChoices = {};

  Map<String, bool> get availableChoices => _availableChoices;

  MultiObjectValueNotifierDropDown({required List<String> inputData})
      : _inputData = inputData,
        _showChoices = false {
    _fill(_inputData);
  }

  void _fill(List<String> items) {
    for (var value in items) {
      _availableChoices.putIfAbsent(value, () => false);
    }
  }

  bool get isLeading =>
      _availableChoices.values.any((element) => element == true);

  int get totalSelected =>
      _availableChoices.values.where((element) => element == true).length;

  void clearAllSelected() {
    _availableChoices.updateAll((key, value) => false);
    notifyListeners();
  }

  List<String> get items => _availableChoices.keys.toList();

  Set<String> selected(String checked) {
    _availableChoices[checked] = !_availableChoices[checked]!;
    return _availableChoices.entries
        .where((element) => element.value == true)
        .map((e) => e.key)
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