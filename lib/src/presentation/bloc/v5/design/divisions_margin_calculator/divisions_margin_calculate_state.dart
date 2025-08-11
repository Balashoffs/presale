part of 'divisions_margin_calculate_cubit.dart';

@freezed
class DivisionsMarginCalculateState with _$DivisionsMarginCalculateState {
  const factory DivisionsMarginCalculateState.initial() = _Initial;
  const factory DivisionsMarginCalculateState.nextPage() = _NextPage;
  const factory DivisionsMarginCalculateState.showPage() = _ShowTable;
  const factory DivisionsMarginCalculateState.error(String errorText) = _Error;
}
