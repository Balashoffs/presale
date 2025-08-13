import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/modules/v5/design/common/custom_dropdwon_vn.dart';
import 'package:provider/provider.dart';

class CustomMoonDropDown extends StatefulWidget {
  const CustomMoonDropDown({
    super.key,
    this.width = 256,
    required this.initText,
    required this.onSelected,
    required this.helperText,
    required this.leadingIcon,
    this.validator,
  });

  final Function(String result) onSelected;
  final String helperText;
  final String initText;
  final IconData leadingIcon;
  final double width;
  final FormFieldValidator<String>? validator;

  @override
  State<CustomMoonDropDown> createState() => _CustomMoonDropDownState();
}

class _CustomMoonDropDownState extends State<CustomMoonDropDown> {
  String _currentText = '';
  final TextEditingController _textEditController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _textEditController.text = widget.initText;
  }

  @override
  void dispose() {
    _textEditController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final backgroundColor = colorTable(context)[40]?.withAlpha(100);
    final borderColor = colorTable(context)[40]?.withAlpha(50);
    return Consumer<StringNotifierDropDown>(
      builder: (context, value, child) {
        return MoonDropdown(
          show: value.showMenu,
          borderColor: borderColor ?? Colors.transparent,
          backgroundColor: backgroundColor,
          constrainWidthToChild: true,
          distanceToTarget: 8.0,
          dropdownAnchorPosition: MoonDropdownAnchorPosition.bottom,
          dropdownShadows: null,
          onTapOutside: value.tapOutside,
          content: Column(children: _generateItems(value, widget.onSelected)),
          child: MoonFormTextInput(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            focusNode: _focusNode,
            validator: widget.validator,
            controller: _textEditController,
            helper: Text(widget.helperText),
            width: widget.width,
            readOnly: true,
            canRequestFocus: false,
            mouseCursor: MouseCursor.defer,
            hintText: _textEditController.text,
            onTap: () {
              value.onTap();
            },
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
        );
      },
    );
  }

  List<Widget> _generateItems(
    StringNotifierDropDown vn,
    Function(String result) onSelected,
  ) {
    return vn.items.map((e) {
      return MoonMenuItem(
        menuItemCrossAxisAlignment: CrossAxisAlignment.center,
        labelAndContentCrossAxisAlignment: CrossAxisAlignment.center,
        width: 312,
        onTap: () {
          onSelected(e);
          vn.selected(e);
          setState(() {
            _textEditController.text = e;
          });
        },
        label: Text(e),
      );
    }).toList();
  }
}

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
  });

  final Function(Set<String>) onSelected;

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
