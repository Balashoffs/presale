import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({
    super.key,
    required this.hintText,
    this.helperText,
    this.leading,
    this.trailing,
    this.onChanged,
    this.validator,
    this.width,
    this.initValue,
    this.autofocus = false,
  });

  final String hintText;
  final String? helperText;
  final IconData? leading;
  final IconData? trailing;
  final double? width;
  final double? initValue;
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
    if (widget.initValue != null) {
      // _textController.text = widget.hintText;
      _textController.addListener(_listener);
    }
  }

  void _listener(){

  }


  @override
  void dispose() {
    _textController.clear();
    _textController.dispose();
    super.dispose();//
  }

  @override
  Widget build(BuildContext context) {
    return MoonFormTextInput(
      textAlign: TextAlign.center,
      controller: _textController,
      enabled: true,
      textInputSize: MoonTextInputSize.sm,
      hasFloatingLabel: false,
      textColor: colorTable(context)[40],
      hintTextColor: colorTable(context)[40],
      backgroundColor: colorTable(context)[40],
      activeBorderColor: colorTable(context)[40],
      inactiveBorderColor: colorTable(context)[40],
      hoverBorderColor: colorTable(context)[40],
      errorColor: colorTable(context)[40],
      autovalidateMode: AutovalidateMode.onUserInteraction,
      hintText: widget.hintText,
      validator: widget.validator,
      autofocus: widget.autofocus,
      onTapOutside: (PointerDownEvent _) =>
          FocusManager.instance.primaryFocus?.unfocus(),
      onChanged: widget.onChanged,
      // helper: widget.helperText != null ? Text(widget.helperText!) : null,
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
    return SizedBox(
      width: width != null ? width! + 10 : 510,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MoonTextArea(
          height: 200,
          enabled: true,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          textColor: colorTable(context)[40],
          hintTextColor: colorTable(context)[40],
          backgroundColor: colorTable(context)[40],
          activeBorderColor: colorTable(context)[40],
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
        ),
      ),
    );
  }
}
