import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v4/design/division_resource_table/division_resource_dto.dart';

enum _Section { input, dropdown }

class CustomDropdownWithSearchWidget extends StatefulWidget {
  const CustomDropdownWithSearchWidget({
    super.key,
    required this.divisions,
    required this.onSelected,
    required this.enabled,
  });

  final List<DivisionResourceDTO> divisions;
  final Function(DivisionResourceDTO) onSelected;
  final bool enabled;

  @override
  State<CustomDropdownWithSearchWidget> createState() =>
      _CustomDropdownWithSearchWidgetState();
}

class _CustomDropdownWithSearchWidgetState
    extends State<CustomDropdownWithSearchWidget> {
  final TextEditingController _searchController = TextEditingController();
  final List<DivisionResourceDTO> _optionsList = [];

  List<DivisionResourceDTO> _filteredOptionsList = [];
  DivisionResourceDTO? _selectedOption;
  bool _showDropdown = false;

  bool get _optionIsSelected =>
      _selectedOption?.divisionName == _searchController.text;

  String get _inputValue => _searchController.text.trim().toLowerCase();

  void _performSearch() {
    setState(() {
      if (!_optionIsSelected && _selectedOption != null) _selectedOption = null;

      _filteredOptionsList = _optionsList
          .where(
            (DivisionResourceDTO option) =>
                option.divisionName.toLowerCase().contains(_inputValue) ||
                option.divisionShortName.toLowerCase().contains(_inputValue),
          )
          .toList();
      _showDropdown = true;
    });
  }

  void _handleSelect(DivisionResourceDTO option) {
    setState(() {
      _showDropdown = false;
      _searchController.text = option.divisionName;
      widget.onSelected(option);
      FocusManager.instance.primaryFocus?.unfocus();
    });
  }

  void _handleClearButton() {
    setState(() {
      _searchController.clear();
      _filteredOptionsList = _optionsList;
    });
  }

  void _handleDropdownTapOutside() {
    setState(() {
      _showDropdown = false;
      if (!_optionIsSelected) _searchController.clear();
      FocusManager.instance.primaryFocus?.unfocus();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    BorderRadiusGeometry? getBorderRadius(_Section variant) {
      final double borderRadiusValue = 8.0;

      return _showDropdown
          ? BorderRadius.vertical(
              top: Radius.circular(
                variant == _Section.input ? borderRadiusValue : 0,
              ),
              bottom: Radius.circular(
                variant == _Section.dropdown ? borderRadiusValue : 0,
              ),
            )
          : BorderRadius.circular(borderRadiusValue);
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16),
      child: Stack(
        children: [
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              return MoonDropdown(
                show: _showDropdown,
                constrainWidthToChild: true,
                distanceToTarget: 0,
                backgroundColor: context.moonColors!.beerus,
                borderRadius: getBorderRadius(_Section.dropdown),
                decoration: BoxDecoration(
                  color: context.moonColors!.goku,
                  borderRadius: getBorderRadius(_Section.dropdown),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x28000000),
                      blurRadius: 6,
                      offset: Offset(0, 6),
                      spreadRadius: -6,
                    ),
                  ],
                  border: Border(
                    left: BorderSide(color: context.moonColors!.beerus),
                    right: BorderSide(color: context.moonColors!.beerus),
                    bottom: BorderSide(color: context.moonColors!.beerus),
                    top: BorderSide(color: context.moonColors!.beerus),
                  ),
                ),
                onTapOutside: () => _handleDropdownTapOutside(),
                content: LayoutBuilder(
                  builder: (context, constraints) {
                    return ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 300),
                      child: ScrollConfiguration(
                        behavior: const ScrollBehavior().copyWith(
                          scrollbars: false,
                        ),
                        child: _filteredOptionsList.isEmpty
                            ? const MoonMenuItem(
                                label: Text('Такого раздела не найдено!'),
                              )
                            : ClipRRect(
                                borderRadius:
                                    getBorderRadius(_Section.dropdown) ??
                                    BorderRadius.zero,
                                child: ListView.builder(
                                  shrinkWrap: true,
                                  clipBehavior: Clip.none,
                                  padding: EdgeInsets.zero,
                                  itemCount: _filteredOptionsList.length,
                                  itemBuilder: (BuildContext _, int index) {
                                    if (index >= _filteredOptionsList.length) {
                                      return const SizedBox.shrink();
                                    }
                                    final DivisionResourceDTO option =
                                        _filteredOptionsList[index];

                                    return MoonMenuItem(
                                      onTap: () => _handleSelect(option),
                                      label: Text(option.divisionName),
                                    );
                                  },
                                ),
                              ),
                      ),
                    );
                  },
                ),
                child: MoonTextInput(
                  enabled: widget.enabled,
                  width: constraints.maxWidth,
                  hasFloatingLabel: true,
                  activeBorderColor: context.moonColors!.beerus,
                  inactiveBorderColor: context.moonColors!.beerus,
                  backgroundColor: context.moonColors!.beerus,
                  hoverBorderColor: context.moonColors!.beerus,
                  borderRadius: getBorderRadius(_Section.input),
                  hintText: "Поиск разделов",
                  controller: _searchController,
                  onTap: () => _performSearch(),
                  onChanged: (String _) => _performSearch(),
                  leading: const Icon(MoonIcons.generic_search_24_light),
                  trailing: MoonButton(
                    padding: EdgeInsets.zero,
                    hoverEffectColor: Colors.transparent,
                    onTap: () => _handleClearButton(),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
