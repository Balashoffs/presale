import 'package:presale/src/domain/models/v1/section/section.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

part 'state.g.dart';

@freezed
class StagesTableState with _$StagesTableState {
  const StagesTableState._();

  const factory StagesTableState({
    @Default([]) List<StagesTableEntity> entities,
  }) = _StagesTableState;

  factory StagesTableState.fromJson(Map<String, dynamic> json) => _$StagesTableStateFromJson(json);
}

@freezed
class StagesTableEntity with _$StagesTableEntity {
  const StagesTableEntity._();

  const factory StagesTableEntity({
    Section? section,
    String? sectionName,
    @Default(1) double coefficient,
    double? costInDay,
    int? durationOfWork,
    double? cost,
  }) = _StagesTableEntity;

  factory StagesTableEntity.fromJson(Map<String, dynamic> json) => _$StagesTableEntityFromJson(json);

  // double calculateCost(){
  //   return
  // }
}
