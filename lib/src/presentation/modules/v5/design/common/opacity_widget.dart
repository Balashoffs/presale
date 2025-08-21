import 'package:flutter/material.dart';

class OpacityWidget extends StatelessWidget {
  const OpacityWidget({super.key, required this.child,  this.isNotUse = true});

  final Widget child;
  final bool isNotUse;


  @override
  Widget build(BuildContext context) {
    final double opacity = isNotUse ? 0.5 : 1.0;
    final bool ignoring = isNotUse;
    return Opacity(
      opacity: opacity,
      child: IgnorePointer(ignoring: ignoring, child: child),
    );
  }
}
