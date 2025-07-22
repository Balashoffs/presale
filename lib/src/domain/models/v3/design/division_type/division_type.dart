import 'package:collection/collection.dart';

enum DivisionType {
  project(
    'design',
    'Проектная документация',
    'ПД',
  ),
  both(
    'both',
    'Проектная и рабочая документация',
    'П/Р',
  ),
  working(
    'working',
    'Рабочая документация',
    'РД',
  );

  const DivisionType(
      this.urlPath,
      this.text,
      this.shortText,
      );

  final String urlPath;
  final String text;
  final String shortText;

  static DivisionType fromShortText(String shortText) => DivisionType.values.firstWhere((e) => e.shortText == shortText);
}
