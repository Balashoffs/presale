import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

class NextPageWidget extends StatelessWidget {
  const NextPageWidget({super.key, required this.onTap});

  final String text = "Далее";
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return MoonButton(
      buttonSize: MoonButtonSize.md,
      onTap: onTap,
      trailing: Icon(MoonIcons.arrows_chevron_right_double_32_regular),
      showBorder: true,
      label: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}
