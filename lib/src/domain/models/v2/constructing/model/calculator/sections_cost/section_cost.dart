import 'package:freezed_annotation/freezed_annotation.dart';

part 'section_cost.freezed.dart';

@freezed
class SectionCost with _$SectionCost {
  const factory SectionCost({
    required String sectionName,
    required double factor,
    required String factorRange,
    SectionCost? parent,
  }) = _SectionCost;
}

SectionCost buildSectionCostFrom(List<dynamic> row) {
  String sectionName = row[0];
  String factorRange = row[1];
  double factor =
      double.parse(factorRange.replaceFirst('%', '').split('-').first);
  return SectionCost(
      sectionName: sectionName, factor: factor, factorRange: factorRange);
}
