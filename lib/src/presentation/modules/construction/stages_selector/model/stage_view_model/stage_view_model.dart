import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';

import 'package:presale/src/presentation/modules/construction/stages_selector/model/stage_info/stage_info.dart';

part 'stage_view_model.freezed.dart';

@freezed
class StageDataViewModel with _$StageDataViewModel {
  const factory StageDataViewModel({
    required StageData stageInfo,
    required List<StageData> subStages,
  }) = _StageDataViewModel;
}

@freezed
class SectionDataVewModel with _$SectionDataVewModel {
  const factory SectionDataVewModel({
    required StageData stageInfo,
    required List<SectionData> subStages,
  }) = _SectionDataVewModel;
}
