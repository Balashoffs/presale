import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_dropdwon_vn.dart';
import 'package:provider/provider.dart';

import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/bloc/construction/provider/provider.dart' hide MultiCustomValueNotifierDropDown;


class ObjectInputDataMultiCustomMoonDropDown extends StatefulWidget {
  const ObjectInputDataMultiCustomMoonDropDown({
    super.key,
    required this.onSelected,
  });

  final Function(Set<String>) onSelected;

  @override
  State<ObjectInputDataMultiCustomMoonDropDown> createState() =>
      _ObjectInputDataMultiCustomMoonDropDownState();
}

class _ObjectInputDataMultiCustomMoonDropDownState
    extends State<ObjectInputDataMultiCustomMoonDropDown> {
  @override
  Widget build(BuildContext context) {
    final backgroundColor = colorTable(context)[40];
    final BorderRadiusGeometry borderRadius = BorderRadius.circular(4.0);
    final borderColor = colorTable(context)[40]?.withAlpha(50);

    return Consumer<MultiObjectValueNotifierDropDown>(
      builder: (context, value, child) {
        return MoonDropdown(
          maxWidth: 700,
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
            width: 250,
            readOnly: true,
            canRequestFocus: false,
            mouseCursor: MouseCursor.defer,
            hintText: "Доп. сложность",
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
    return value.items.map(
      (e) {
        return MoonMenuItem(
          width: 384,
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
      },
    ).toList();
  }
}
