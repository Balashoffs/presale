import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart'
    show colorTable;

class CustomDropdownWithSearchWidget extends StatefulWidget {
  const CustomDropdownWithSearchWidget({
    super.key,
    required this.divisions,
    required this.onSelected,
    required this.enabled,
  });

  final List<DivisionResourceRowVM> divisions;
  final Function(DivisionResourceRowVM) onSelected;
  final bool enabled;

  @override
  State<CustomDropdownWithSearchWidget> createState() =>
      _CustomDropdownWithSearchWidgetState();
}

class _CustomDropdownWithSearchWidgetState
    extends State<CustomDropdownWithSearchWidget> {
  final TextEditingController _searchController = TextEditingController();

  final FocusNode _focusNode = FocusNode();
  List<DivisionResourceRowVM> _filteredOptionsList = [];
  DivisionResourceRowVM? _selectedOption;
  bool _showDropdown = false;

  bool get _optionIsSelected =>
      _selectedOption?.divisionShortName == _searchController.text ||
          _selectedOption?.divisionName == _searchController.text;

  String get _inputValue => _searchController.text.trim().toLowerCase();

  void _performSearch() {
    setState(() {
      if (!_optionIsSelected && _selectedOption != null) _selectedOption = null;

      _filteredOptionsList = widget.divisions
          .where(
            (DivisionResourceRowVM option) =>
        option.divisionName.toLowerCase().contains(_inputValue) ||
            option.divisionShortName.toLowerCase().contains(_inputValue),
      )
          .toList();
      _showDropdown = true;
    });
  }

  void _handleSelect(DivisionResourceRowVM option) {
    setState(() {
      _showDropdown = false;
      _searchController.clear();
      _focusNode.unfocus();
      widget.onSelected(option);
    });
  }

  void _showAllOptionsList() {
    setState(() {
      _filteredOptionsList = widget.divisions;
      _showDropdown = !_showDropdown;
    });
  }

  void _handleDropdownTapOutside() {
    setState(() {
      _showDropdown = false;
      if (!_optionIsSelected) _searchController.clear();
      _focusNode.unfocus();
    });
  }

  void _handleInputTapOutside() {
    if (_focusNode.hasFocus && !_showDropdown) {
      if (!_optionIsSelected) _searchController.clear();
      _focusNode.unfocus();
    }
  }

  @override
  void dispose() {
    _searchController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MoonDropdown(
        show: _showDropdown,
        constrainWidthToChild: true,
        backgroundColor: colorTable(context)[40],
        borderRadius: BorderRadius.circular(8.0),
        distanceToTarget: 8,
        dropdownShadows: [],
        onTapOutside: () => _handleDropdownTapOutside(),
        content: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 200),
          child: ScrollConfiguration(
            behavior: const ScrollBehavior().copyWith(scrollbars: false),
            child: _filteredOptionsList.isEmpty
                ? const MoonMenuItem(label: Text('Раздел не найден'))
                : ClipRRect(
              borderRadius: BorderRadius.zero,
              child: ListView.builder(
                shrinkWrap: true,
                clipBehavior: Clip.none,
                padding: EdgeInsets.zero,
                itemCount: _filteredOptionsList.length,
                itemBuilder: (BuildContext _, int index) {
                  if (index >= _filteredOptionsList.length) {
                    return const SizedBox.shrink();
                  }
                  final DivisionResourceRowVM option =
                  _filteredOptionsList[index];

                  return MoonMenuItem(
                    onTap: () => _handleSelect(option),
                    label: Text(option.divisionName),
                  );
                },
              ),
            ),
          ),
        ),
        child: MoonTextInput(
          enabled: true,
          hasFloatingLabel: false,
          width: 320,
          focusNode: _focusNode,
          activeBorderColor: colorTable(context)[40],
          inactiveBorderColor: colorTable(context)[40],
          backgroundColor: colorTable(context)[40],
          hoverBorderColor: colorTable(context)[40],
          borderRadius: BorderRadius.circular(8.0),
          textInputSize: MoonTextInputSize.md,
          hintText: "Найти раздел",
          controller: _searchController,
          onTap: () => _performSearch(),
          onTapOutside: (PointerDownEvent _) => _handleInputTapOutside(),
          onChanged: (String _) => _performSearch(),
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            hoverEffectColor: Colors.transparent,
            onTap: () => _showAllOptionsList(),
            icon: AnimatedRotation(
              duration: const Duration(milliseconds: 200),
              turns: _showDropdown ? -0.5 : 0,
              child: const Icon(MoonIcons.controls_chevron_down_16_light),
            ),
          ),
        ),
      ),
    );
  }
}

final class DivisionResourceRowVM {
  final int id;

  //Имя раздела
  final String divisionName;

  // Аббвеатура
  final String divisionShortName;

  // Должность
  final String resourceName;

  // Кол-во задействованных должностей
  int _resourceQnt = 0;

  int get resourceQnt => _resourceQnt; // Ставка в день
  set resourceQnt(int value) {
    _resourceQnt = value;
  }

  // Кол-во задействованных дней
  int _workDays = 0;

  int get workDays => _workDays;

  set workDays(int value) {
    _workDays = value;
  }

  // Коэфициент сложности

  double _complexFactor = 1.0;

  double get complexFactor => _complexFactor;

  set complexFactor(double value) {
    _complexFactor = value;
  }

  // Коэфициент по площади
  double _squareFactor;

  double get squareFactor => _squareFactor;

  set squareFactor(double value) {
    _squareFactor = value;
  }

  // Коэфициент участия
  double _resourceUsingFactor = 1.0;

  double get resourceUsingFactor => _resourceUsingFactor;

  set resourceUsingFactor(double value) {
    _resourceUsingFactor = value;
  }

  //Ставка специалиста в день
  final double resourceCostPerDay;

  // Стоимость задествия должности по конкретному разделу
  final ValueNotifier<double> totalResourceRowCostVN;

  DivisionResourceRowVM({
    required this.id,
    required this.divisionName,
    required this.divisionShortName,
    required this.resourceName,
    required this.resourceCostPerDay,
    required int resourceQnt,
    required int workDays,
    required double complexFactor,
    required double squareFactor,
    required double resourceUsingFactor,
    double totalResourceRowCost = 0.0,
  }) : _resourceQnt = resourceQnt,
        totalResourceRowCostVN = ValueNotifier(totalResourceRowCost),
        _workDays = workDays,
        _complexFactor = complexFactor,
        _squareFactor = squareFactor,
        _resourceUsingFactor = resourceUsingFactor;

  DivisionResourceRowVM copyWith({
    int? id,
    String? divisionName,
    String? divisionShortName,
    String? resourceName,
    int? resourceQnt,
    int? workDays,
    double? complexFactor,
    double? squareFactor,
    double? resourceUsingFactor,
    double? resourceCostPerDay,
    double? totalResourceRowCost,
  }) {
    return DivisionResourceRowVM(
      id: id ?? this.id,
      divisionName: divisionName ?? this.divisionName,
      divisionShortName: divisionShortName ?? this.divisionShortName,
      resourceName: resourceName ?? this.resourceName,
      resourceQnt: resourceQnt ?? this._resourceQnt,
      workDays: workDays ?? this._workDays,
      complexFactor: complexFactor ?? this._complexFactor,
      squareFactor: squareFactor ?? this._squareFactor,
      resourceUsingFactor: resourceUsingFactor ?? this._resourceUsingFactor,
      resourceCostPerDay: resourceCostPerDay ?? this.resourceCostPerDay,
    )..totalResourceRowCostVN.value = totalResourceRowCost ?? 0.0;
  }
}

