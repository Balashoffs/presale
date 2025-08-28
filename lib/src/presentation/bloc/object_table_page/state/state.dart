import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
abstract class ObjectTableState with _$ObjectTableState {
  const ObjectTableState._();

  const factory ObjectTableState({
    String? objectName,
    String? address,
    double? square,
    @Default(100) int workDuration,
    @Default(1) double profitNorm,
    @Default(1) double distanceCoefficient,
    @Default(1) double durationCoefficient,
    @Default(1) double customerCoefficient,
    @Default(1) double difficultyCoefficient,
  }) = _ObjectTableState;

  factory ObjectTableState.fromJson(Map<String, dynamic> json) => _$ObjectTableStateFromJson(json);
}
