part of 'sections_table_cubit.dart';

@freezed
class SectionsTableState with _$SectionsTableState {
  const factory SectionsTableState.initial() = _Initial;
  const factory SectionsTableState.error(String errorText) = _Error;
  const factory SectionsTableState.sections(Map<String, List<SectionData>> sectionsData) = _Sections;
  const factory SectionsTableState.nextPage() = _nextPage;
}
