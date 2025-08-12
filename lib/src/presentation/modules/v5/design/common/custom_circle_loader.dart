import 'package:flutter/material.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/color_options.dart';

class CustomCircleLoader extends StatelessWidget {
  const CustomCircleLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 64.0, horizontal: 16.0),
        child: MoonCircularLoader(
          color: colorTable(context)[40],
          backgroundColor: colorTable(context)[40],
          circularLoaderSize: MoonCircularLoaderSize.md,
          strokeCap: StrokeCap.round,
        ),
      ),
    );
  }
}
