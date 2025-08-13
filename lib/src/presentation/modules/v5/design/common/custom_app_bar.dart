import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:moon_design/moon_design.dart';
import 'package:presale/src/presentation/common/typography_page_options.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    required this.pathToRootRoute,
    required this.title,
    required this.child,
  });

  final String pathToRootRoute;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          MoonButton.icon(
            icon: Icon(MoonIcons.controls_close_16_light),
            onTap: () {
              context.go(pathToRootRoute);
            },
          ),
        ],
        title: Text(
          "Расчет стадий проектирования",
          style: getHeadingTextStyle(context, MoonTextSize.size16),
        ),
      ),
      body: child,
    );
  }
}
