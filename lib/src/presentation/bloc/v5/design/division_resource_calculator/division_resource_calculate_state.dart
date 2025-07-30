part of 'division_resource_calculate_cubit.dart';

@freezed
class DivisionResourceCalculateState with _$DivisionResourceCalculateState {
  const factory DivisionResourceCalculateState.initial() = _Initial;
  const factory DivisionResourceCalculateState.nextPage(String? nextType) = _NextPage;
  const factory DivisionResourceCalculateState.showPage() = _ShowTable;
  const factory DivisionResourceCalculateState.error(String errorText) = _Error;
}
