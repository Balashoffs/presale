import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({
    super.key,
    this.initValue,
    this.helpText,
    this.hintText,
    this.leading,
    this.trailing,
    this.onChanged,
    this.validator,
    this.width,
    this.autofocus = false,
  });

  final String? initValue;
  final String? helpText;
  final String? hintText;
  final IconData? leading;
  final IconData? trailing;
  final double? width;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;
  final bool autofocus;

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  final TextEditingController _textController = TextEditingController();


  @override
  void initState() {
    super.initState();
    if(widget.initValue != null){
      _textController.text = widget.initValue!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MoonFormTextInput(
      focusNode: FocusNode(),
      width: widget.width,
      controller: _textController,
      enabled: true,
      textInputSize: MoonTextInputSize.md,
      hasFloatingLabel: false,
      onChanged: widget.onChanged,
      helper: widget.helpText != null ? Text(widget.helpText!) : null,
      textColor: colorTable(context)[40],
      hintTextColor: colorTable(context)[40],
      backgroundColor: colorTable(context)[40],
      activeBorderColor: getColor(context, MoonColor.trunks),
      inactiveBorderColor: colorTable(context)[40],
      hoverBorderColor: colorTable(context)[40],
      errorColor: colorTable(context)[40],
      borderRadius: BorderRadius.circular(8.toDouble()),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      hintText: widget.hintText,
      validator: widget.validator,
      autofocus: widget.autofocus,
      onTap: (){_textController.clear();},
      onTapOutside: (PointerDownEvent _) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      leading: widget.leading != null ? Icon(widget.leading, size: 24) : null,
      trailing: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          child: widget.trailing != null
              ? Icon(widget.trailing, size: 24)
              : null,
          onTap: () => _textController.clear(),
        ),
      ),

    );
  }
}

class CustomTextAreaInput extends StatelessWidget {
  const CustomTextAreaInput({
    super.key,
    required this.hintText,
    this.helperText,
    this.leading,
    this.trailing,
    this.width,
    this.initValue,
    this.onChanged,
    this.validator,
  });

  final String hintText;
  final String? helperText;
  final IconData? leading;
  final IconData? trailing;
  final double? width;
  final double? initValue;
  final ValueChanged<String>? onChanged;
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    return MoonTextArea(
      enabled: true,
      expands: true,
      height: 128,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textColor: colorTable(context)[40],
      hintTextColor: colorTable(context)[40],
      backgroundColor: colorTable(context)[40],
      activeBorderColor:  getColor(context, MoonColor.trunks),
      inactiveBorderColor: colorTable(context)[40],
      hoverBorderColor: colorTable(context)[40],
      errorColor: colorTable(context)[40],
      borderRadius: BorderRadius.circular(8.toDouble()),
      hintText: hintText,
      validator: validator,
      onTapOutside: (PointerDownEvent _) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      onChanged: onChanged,
      helper: helperText != null ? Text(helperText!) : null,
    );
  }
}
