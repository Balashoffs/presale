import 'package:collection/collection.dart';

enum ServiceStage {
  project(
    'project',
    'Проектная документация',
    'ПД',
  ),
  working(
    'working',
    'Рабочая документация',
    'РД',
  ),
  both(
    'both',
    'Две стадии',
    'Две стадии',
  );

  const ServiceStage(
      this.urlPath,
      this.text,
      this.shortText,
      );

  final String urlPath;
  final String text;
  final String shortText;

  static ServiceStage? fromUrl(String? url) => ServiceStage.values.firstWhereOrNull((e) => e.urlPath == url);
}
