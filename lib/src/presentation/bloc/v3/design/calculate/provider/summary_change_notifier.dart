import 'package:flutter/cupertino.dart';

class SummaryChangeNotifier extends ChangeNotifier {
  final ValueNotifier<double> summary = ValueNotifier(0.0);
  final ValueNotifier<double> summaryWithMargin = ValueNotifier(0.0);

}
