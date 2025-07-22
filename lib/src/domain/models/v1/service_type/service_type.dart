import 'package:collection/collection.dart';

enum ServiceType {
  design(
    'design',
    'Проектирование',
  ),
  realization(
    'realization',
    'Реализация',
  ),
  commissioning(
    'commissioning',
    'ПНР',
  ),
  software(
    'software',
    'ПО',
  );

  const ServiceType(
    this.urlPath,
    this.text,
  );

  final String urlPath;
  final String text;

  static ServiceType? fromUrl(String? url) => ServiceType.values.firstWhereOrNull((e) => e.urlPath == url);
}
