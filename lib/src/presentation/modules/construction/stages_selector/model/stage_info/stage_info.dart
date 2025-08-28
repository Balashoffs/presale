import 'package:freezed_annotation/freezed_annotation.dart';

part 'stage_info.freezed.dart';

@freezed
abstract class StageData with _$StageData {
  const factory StageData({
    required String id,
    required String parentId,
    required String type,
    required double factor,
    required double value,
    required String name,
    @Default(false)bool isSection,
  }) = _StageData;
}
