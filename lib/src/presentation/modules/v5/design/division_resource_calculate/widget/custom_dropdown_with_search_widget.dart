import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v5/design/division_resource_table/divisions_with_resources_dto.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:uuid/uuid.dart';

class CustomDropdownWithSearchWidget extends StatefulWidget {
  const CustomDropdownWithSearchWidget({
    super.key,
    required this.divisions,
    required this.onSelected,
    required this.enabled,
    required this.autoFocus,
  });

  final List<DivisionDTO> divisions;
  final Function(DivisionDTO) onSelected;
  final bool enabled;
  final bool autoFocus;

  @override
  State<CustomDropdownWithSearchWidget> createState() =>
      _CustomDropdownWithSearchWidgetState();
}

class _CustomDropdownWithSearchWidgetState
    extends State<CustomDropdownWithSearchWidget> {
  final TextEditingController _searchController = TextEditingController();

  final FocusNode _focusNode = FocusNode();
  List<DivisionDTO> _filteredOptionsList = [];
  DivisionDTO? _selectedOption;
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
            (DivisionDTO option) =>
                option.divisionName.toLowerCase().contains(_inputValue) ||
                option.divisionShortName.toLowerCase().contains(_inputValue),
          )
          .toList();
      _showDropdown = true;
    });
  }

  void _handleSelect(DivisionDTO option) {
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
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MoonDropdown(
        borderColor:  getColor(context, MoonColor.trunks),
        show: _showDropdown,
        constrainWidthToChild: true,
        backgroundColor: colorTable(context)[40],
        borderRadius: BorderRadius.circular(8.0),
        distanceToTarget: 8,
        dropdownShadows: [],
        onTapOutside: () {
          _handleDropdownTapOutside();
        },
        content: ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height * 2 / 3,
          ),
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
                        final DivisionDTO option = _filteredOptionsList[index];
                        return MoonMenuItem(
                          onTap: () {
                            _handleSelect(option);
                          },
                          label: Text(option.divisionName),
                        );
                      },
                    ),
                  ),
          ),
        ),
        child: MoonTextInput(
          autofocus: widget.autoFocus,
          enabled: widget.enabled,
          hasFloatingLabel: false,
          width: 320,
          focusNode: _focusNode,
          activeBorderColor:  getColor(context, MoonColor.trunks),
          inactiveBorderColor: colorTable(context)[40],
          backgroundColor: colorTable(context)[40],
          hoverBorderColor: colorTable(context)[40],
          borderRadius: BorderRadius.circular(8.0),
          textInputSize: MoonTextInputSize.md,
          hintText: "Начните вводить текст...",
          controller: _searchController,
          onTap: () {
            _performSearch();
          },
          onTapOutside: (PointerDownEvent _) {
            _handleInputTapOutside();
          },
          onChanged: (String _) => _performSearch(),
          trailing: MoonButton.icon(
            buttonSize: MoonButtonSize.xs,
            hoverEffectColor: Colors.transparent,
            onTap: () {
              _showAllOptionsList();
            },
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
    required this.hintText,
  });

  final List<ResourceDTO> resources;
  final Function(ResourceDTO?) onSelected;
  final String hintText;

  @override
  State<ResourceDropDownSelector> createState() =>
      _ResourceDropDownSelectorState();
}

class _ResourceDropDownSelectorState extends State<ResourceDropDownSelector> {
  bool _showMenu = false;
  String _hintText = '';
  final GlobalKey _dropWidgetKey = GlobalKey();
  bool _isUpper = false;

  void _getPosition() {
    final RenderBox? renderBox =
        _dropWidgetKey.currentContext?.findRenderObject() as RenderBox?;
    print('find render: ${renderBox.toString()}');
    if (renderBox != null) {
      final Offset globalPosition = renderBox.localToGlobal(Offset.zero);
      ;
      final height = MediaQuery.of(context).size.height;
      setState(() {
        _isUpper = globalPosition.dy.compareTo(height / 2) > 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MoonDropdown(
      key: _dropWidgetKey,
      show: _showMenu,
      groupId: Uuid().v4(),
      maxWidth: 196,
      borderColor: getColor(context, MoonColor.trunks),
      constrainWidthToChild: true,
      distanceToTarget: 8.0,
      dropdownAnchorPosition: _isUpper
          ? MoonDropdownAnchorPosition.top
          : MoonDropdownAnchorPosition.bottom,
      dropdownShadows: null,
      onTapOutside: () => setState(() {
        _showMenu = false;
        _hintText = '';
      }),
      content: Column(
        children: List.generate(widget.resources.length, (index) {
          String name = widget.resources[index].resourceName;
          return MoonMenuItem(
            onTap: () => setState(() {
              _showMenu = false;
              _hintText = widget.resources[index].resourceName;
              widget.onSelected(widget.resources[index]);
            }),
            label: Text(name),
          );
        }),
      ),
      child: MoonTextInput(
        activeBorderColor:  getColor(context, MoonColor.trunks),
        width: 256,
        readOnly: true,
        canRequestFocus: false,
        mouseCursor: MouseCursor.defer,
        hintText: _hintText.isEmpty ? widget.hintText : _hintText,
        onTap: () {
          _getPosition();
          setState(() {
            _showMenu = !_showMenu;
            _hintText = '';
            if (!_showMenu) {
              widget.onSelected(null);
            }
          });
        },
        onTapOutside: (PointerDownEvent _) {
          FocusManager.instance.primaryFocus?.unfocus();
          _hintText = '';
        },
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
