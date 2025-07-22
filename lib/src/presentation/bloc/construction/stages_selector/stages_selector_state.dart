part of 'stages_selector_cubit.dart';

@freezed
class StagesSelectorState with _$StagesSelectorState {

  const factory StagesSelectorState.initial() = _Initial;
  const factory StagesSelectorState.stage(StageDataViewModel stage) = _Stage;
  const factory StagesSelectorState.section( SectionDataVewModel section) = _Section;
  const factory StagesSelectorState.error(String error) = _Error;
}
