import 'package:freezed_annotation/freezed_annotation.dart';

part 'selected_item.freezed.dart';

@freezed
abstract class StagesSelectorSelectedItem with _$StagesSelectorSelectedItem {
  const factory StagesSelectorSelectedItem({
    required String id,
    required String name,
    @Default(false) bool isSelected,
  }) = _StagesSelectorSelectedItem;
}
