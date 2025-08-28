import 'package:freezed_annotation/freezed_annotation.dart';

part 'cost_struct.freezed.dart';
part 'cost_struct.g.dart';

@freezed
abstract class CostStruct with _$CostStruct {
  const factory CostStruct({
    required double jobFactor,
    required String jobName,
  }) = _CostStruct;

  factory CostStruct.fromJson(Map<String, dynamic> json) =>
      _$CostStructFromJson(json);

}
