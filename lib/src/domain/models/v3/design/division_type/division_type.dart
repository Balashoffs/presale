enum DivisionType {
  project(
    'design',
    'Проектная документация',
    'П',
  ),
  working(
    'working',
    'Рабочая документация',
    'Р',
  );

  const DivisionType(
      this.urlPath,
      this.text,
      this.shortText,
      );

  final String urlPath;
  final String text;
  final String shortText;

  static DivisionType fromShortText(String text) => DivisionType.values.firstWhere((e) => e.text == text);
}
