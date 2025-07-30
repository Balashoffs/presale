import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_resource_row_viewmodel.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/division_with_resources_dto.dart';
import 'package:presale/src/presentation/common/color_options.dart'
    show colorTable;

class CustomDropdownWithSearchWidget extends StatefulWidget {
  const CustomDropdownWithSearchWidget({
    super.key,
    required this.divisions,
    required this.onSelected,
    required this.enabled,
  });

  final List<DivisionWithResourceRowVM> divisions;
  final Function(DivisionWithResourceRowVM) onSelected;
  final bool enabled;

  @override
  State<CustomDropdownWithSearchWidget> createState() =>
      _CustomDropdownWithSearchWidgetState();
}

class _CustomDropdownWithSearchWidgetState
    extends State<CustomDropdownWithSearchWidget> {
  final TextEditingController _searchController = TextEditingController();

  final FocusNode _focusNode = FocusNode();
  List<DivisionWithResourceRowVM> _filteredOptionsList = [];
  DivisionWithResourceRowVM? _selectedOption;
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
            (DivisionWithResourceRowVM option) =>
                option.divisionName.toLowerCase().contains(_inputValue) ||
                option.divisionShortName.toLowerCase().contains(_inputValue),
          )
          .toList();
      _showDropdown = true;
    });
  }

  void _handleSelect(DivisionWithResourceRowVM option) {
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
                        final DivisionWithResourceRowVM option =
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

class ResourceDropDownSelector extends StatefulWidget {
  const ResourceDropDownSelector({
    super.key,
    required this.resources,
    required this.onSelected,
  });

  final List<ResourceDTO> resources;
  final Function(ResourceDTO) onSelected;

  @override
  State<ResourceDropDownSelector> createState() => _ResourceDropDownSelectorState();
}

class _ResourceDropDownSelectorState extends State<ResourceDropDownSelector> {
  bool _showMenu = false;
  String _hintText = 'Выберите ресурс';

  @override
  Widget build(BuildContext context) {
    return MoonDropdown(
      show: _showMenu,
      groupId: 'select_resources',
      maxWidth: 312,
      borderColor: colorTable(context)[40] ?? Colors.transparent,
      backgroundColor: colorTable(context)[40],
      constrainWidthToChild: true,
      distanceToTarget: 8.0,
      dropdownAnchorPosition: MoonDropdownAnchorPosition.bottom,
      dropdownShadows: null,
      onTapOutside: () => setState(() {
        _showMenu = false;
      }),
      content: Column(
        children: List.generate(widget.resources.length, (index) {
          String name = widget.resources[index].resourceName;
          return  MoonMenuItem(
              onTap: () => setState(() {
                _showMenu = false;
                _hintText = widget.resources[index].resourceName;
                widget.onSelected(widget.resources[index]);
              }),
              label: Text(name),);
        },),
      ),
      child: MoonTextInput(
        width: 256,
        readOnly: true,
        canRequestFocus: false,
        mouseCursor: MouseCursor.defer,
        hintText: _hintText,
        onTap: () => setState(() => _showMenu = !_showMenu),
        onTapOutside: (PointerDownEvent _) =>
            FocusManager.instance.primaryFocus?.unfocus(),
        trailing: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Center(
            child: AnimatedRotation(
              duration: const Duration(milliseconds: 200),
              turns: _showMenu ? -0.5 : 0,
              child: const Icon(
                MoonIcons.controls_chevron_down_16_light,
                size: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
