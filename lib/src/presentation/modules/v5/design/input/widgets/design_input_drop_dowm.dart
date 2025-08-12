import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/factors/base_factor/input_base_factor.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid.dart';

class InputFactorMoonDropDown extends StatefulWidget {
  const InputFactorMoonDropDown({
    super.key,
    required this.onSelected,
    required this.helperText,
    required this.leadingIcon,
  });

  final Function(String result) onSelected;
  final String helperText;
  final IconData leadingIcon;

  @override
  State<InputFactorMoonDropDown> createState() =>
      _InputFactorMoonDropDownState();
}

class _InputFactorMoonDropDownState extends State<InputFactorMoonDropDown> {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = colorTable(context)[40]?.withAlpha(100);
    final borderColor = colorTable(context)[40]?.withAlpha(50);
    return Consumer<SingleObjectValueNotifierDropDown>(
      builder: (context, value, child) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: MoonDropdown(
            groupId: Uuid().v4(),
            maxWidth: 312,
            show: value.showMenu,
            borderColor: borderColor ?? Colors.transparent,
            backgroundColor: backgroundColor,
            constrainWidthToChild: true,
            distanceToTarget: 8.0,
            dropdownAnchorPosition: MoonDropdownAnchorPosition.bottom,
            dropdownShadows: null,
            onTapOutside: () {
              value.tapOutside();
            },
            content: Column(children: _generateItems(value)),
            child: MoonTextInput(
              helper: Text(widget.helperText),
              width: 312,
              readOnly: true,
              canRequestFocus: false,
              mouseCursor: MouseCursor.defer,
              hintText: value.selectedItems,
              onTap: () => value.onTap(),
              onTapOutside: (PointerDownEvent _) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              leading: Icon(widget.leadingIcon, size: 24),
              trailing: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Center(
                  child: AnimatedRotation(
                    duration: const Duration(milliseconds: 200),
                    turns: value.showMenu ? -0.5 : 0,
                    child: const Icon(
                      MoonIcons.controls_chevron_down_16_light,
                      size: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _generateItems(SingleObjectValueNotifierDropDown vn) {
    return vn.notSelected.map((e) {
      return MoonMenuItem(
        menuItemCrossAxisAlignment: CrossAxisAlignment.center,
        labelAndContentCrossAxisAlignment: CrossAxisAlignment.center,
        width: 312,
        onTap: () {
          widget.onSelected(e);
          vn.selected(e);
        },
        label: Text(e),
      );
    }).toList();
  }
}

class InputFactorMultiCustomMoonDropDown extends StatefulWidget {
  const InputFactorMultiCustomMoonDropDown({
    super.key,
    required this.onSelected,
    required this.initText,
  });

  final Function(Set<String>) onSelected;
  final String initText;

  @override
  State<InputFactorMultiCustomMoonDropDown> createState() =>
      _InputFactorMultiCustomMoonDropDownState();
}

class _InputFactorMultiCustomMoonDropDownState
    extends State<InputFactorMultiCustomMoonDropDown> {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = colorTable(context)[40];
    final BorderRadiusGeometry borderRadius = BorderRadius.circular(4.0);
    final borderColor = colorTable(context)[40]?.withAlpha(50);

    return Consumer<MultiObjectValueNotifierDropDown>(
      builder: (context, value, child) {
        return MoonDropdown(
          show: value.showChoices,
          borderColor: borderColor ?? Colors.transparent,
          backgroundColor: backgroundColor,
          constrainWidthToChild: false,
          distanceToTarget: 8.0,
          dropdownAnchorPosition: MoonDropdownAnchorPosition.bottom,
          dropdownShadows: null,
          onTapOutside: () => value.tapOutside(),
          content: ClipRRect(
            borderRadius: borderRadius,
            child: Column(children: _generateItems(value)),
          ),
          child: MoonTextInput(
            width: 312,
            readOnly: true,
            canRequestFocus: false,
            mouseCursor: MouseCursor.defer,
            hintText: widget.initText,
            onTap: () => value.onTap(),
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            leading: value.isLeading
                ? Center(
              child: MoonTag(
                tagSize: MoonTagSize.xs,
                backgroundColor: context.moonColors!.bulma,
                onTap: () => value.clearAllSelected(),
                label: Text(
                  "${value.totalSelected}",
                  style: TextStyle(color: context.moonColors!.gohan),
                ),
                trailing: Icon(
                  MoonIcons.controls_close_small_16_light,
                  color: context.moonColors!.gohan,
                ),
              ),
            )
                : null,
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Center(
                child: AnimatedRotation(
                  duration: const Duration(milliseconds: 200),
                  turns: value.showChoices ? -0.5 : 0,
                  child: const Icon(
                    MoonIcons.controls_chevron_down_16_light,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  List<Widget> _generateItems(MultiObjectValueNotifierDropDown value) {
    return value.items.map((e) {
      return MoonMenuItem(
        width: 312,
        absorbGestures: true,
        onTap: () {
          widget.onSelected(value.selected(e));
          value.onCheck(e);
        },
        label: Text(e),
        trailing: MoonCheckbox(
          value: value.isSelected(e),
          tapAreaSizeValue: 0,
          onChanged: (_) {},
        ),
      );
    }).toList();
  }
}


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