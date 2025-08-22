import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';

class NextPageWidget extends StatelessWidget {
  const NextPageWidget({super.key, required this.onTap});

  final String text = "Далее";
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0, right: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          MoonButton(
            buttonSize: MoonButtonSize.md,
            onTap: onTap,
            trailing:
            Icon(MoonIcons.arrows_chevron_right_double_32_regular),
            showBorder: true,
            label: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
