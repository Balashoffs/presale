import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

class NextPageWidget extends StatelessWidget {
  const NextPageWidget({
    super.key,
    required this.onTap,
    required this.buttonText,
  });

  final String buttonText;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        MoonButton(
          buttonSize: MoonButtonSize.md,
          onTap: onTap,
          trailing: Icon(MoonIcons.arrows_chevron_right_double_32_regular),
          label: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
