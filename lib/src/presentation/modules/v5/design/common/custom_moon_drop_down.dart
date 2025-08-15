import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';
import 'package:presale/src/presentation/modules/v5/design/common/drop_down_text_controller.dart';
import 'package:provider/provider.dart';

class CustomMoonDropDown extends StatefulWidget {
  const CustomMoonDropDown({
    super.key,
    this.width = 256,
    required this.initText,
    required this.onSelected,
    this.helperText,
    required this.leadingIcon,
    this.validator,
  });

  final Function(String result) onSelected;
  final String? helperText;
  final String initText;
  final IconData leadingIcon;
  final double width;
  final FormFieldValidator<String>? validator;

  @override
  State<CustomMoonDropDown> createState() => _CustomMoonDropDownState();
}

class _CustomMoonDropDownState extends State<CustomMoonDropDown> {
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
    return Consumer<DropDownTextController>(
      builder: (context, value, child) {
        return MoonDropdown(
          show: value.showMenu,
          borderColor: Colors.transparent,
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
            helper: widget.helperText != null ? Text(widget.helperText!) : null,
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
    DropDownTextController vn,
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

