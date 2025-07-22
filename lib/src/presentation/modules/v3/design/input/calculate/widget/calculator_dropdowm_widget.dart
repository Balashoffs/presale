import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/domain/models/v3/design/divison/division.dart';

typedef SelectedItem = Function(Division? item);

class CalculatorDrowDownWidget extends StatefulWidget {
  const CalculatorDrowDownWidget({
    super.key,
    required this.selectedItem,
    required this.divisions,
    required this.enabled,
  });

  final SelectedItem selectedItem;
  final List<Division> divisions;
  final bool enabled;

  @override
  State<CalculatorDrowDownWidget> createState() => _DropdownWidgetState();
}

class _DropdownWidgetState<T> extends State<CalculatorDrowDownWidget> {
  bool _showChoices = false;
  final String hintText = 'Добавить раздел';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MoonDropdown(
          maxHeight: 512,
          show: _showChoices,
          minWidth: 250,
          constrainWidthToChild: true,
          onTapOutside: () => setState(() => _showChoices = false),
          content: ClipRRect(
            borderRadius: BorderRadius.zero,
            child: ListView(
              primary: true,
              shrinkWrap: true,
              children: List.generate(
                widget.divisions.length,
                (int index) => MoonMenuItem(
                  absorbGestures: true,
                  onTap: () {
                    Division? res = widget.divisions.firstWhere(
                      (element) =>
                          element.shortName ==
                          widget.divisions[index].shortName,
                    );
                    widget.selectedItem(res);
                    setState(() {
                      _showChoices = !_showChoices;
                    });
                  },
                  label: Text(widget.divisions[index].name),
                ),
              ),
            ),
          ),
          child: MoonTextInput(
            enabled: widget.enabled,
            width: 270,
            readOnly: true,
            canRequestFocus: false,
            mouseCursor: MouseCursor.defer,
            hintText: hintText,
            onTap: () => setState(() => _showChoices = !_showChoices),
            onTapOutside: (PointerDownEvent _) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            trailing: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Center(
                child: AnimatedRotation(
                  duration: const Duration(milliseconds: 200),
                  turns: _showChoices ? -0.5 : 0,
                  child: const Icon(
                    MoonIcons.controls_chevron_down_16_light,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
