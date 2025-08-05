import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v5/common/person_sign_dto.dart'
    show PersonSignDTO;
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:uuid/uuid.dart';

class PersonSignDropDownSelector extends StatefulWidget {
  const PersonSignDropDownSelector({
    super.key,
    required this.resources,
    required this.onSelected,
    required this.hintText,
  });

  final List<PersonSignDTO> resources;
  final Function(PersonSignDTO?) onSelected;
  final String hintText;

  @override
  State<PersonSignDropDownSelector> createState() =>
      _PersonSignDropDownSelectorState();
}

class _PersonSignDropDownSelectorState
    extends State<PersonSignDropDownSelector> {
  bool _showMenu = false;
  String _hintText = '';


  @override
  Widget build(BuildContext context) {
    return MoonDropdown(
      show: _showMenu,
      groupId: Uuid().v4(),
      maxWidth: 312,
      constrainWidthToChild: true,
      distanceToTarget: 8.0,
      dropdownAnchorPosition: MoonDropdownAnchorPosition.top,
      dropdownShadows: null,
      onTapOutside: () => setState(() {
        _showMenu = false;
        _hintText = '';
      }),
      content: Column(
        children: List.generate(widget.resources.length, (index) {
          String name = widget.resources[index].fullName;
          return MoonMenuItem(
            onTap: () => setState(() {
              _showMenu = false;
              _hintText = widget.resources[index].fullName;
              widget.onSelected(widget.resources[index]);
            }),
            label: Text(name),
          );
        }),
      ),
      child: MoonFormTextInput(
        width: 256,
        readOnly: true,
        canRequestFocus: false,
        validator: (value) => _hintText.isEmpty ? 'Выберите подписанта' : null,
        mouseCursor: MouseCursor.defer,
        hintText: _hintText.isEmpty ? widget.hintText : _hintText,
        onTap: () => setState(() {
          _showMenu = !_showMenu;
          if (!_showMenu) {
            widget.onSelected(null);
          }
        }),
        onTapOutside: (PointerDownEvent _) {
          FocusManager.instance.primaryFocus?.unfocus();
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
