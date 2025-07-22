part of 'calculate_division_value_bloc_cubit.dart';

@freezed
class CalculateDivisionValueBlocState with _$CalculateDivisionValueBlocState {
  const factory CalculateDivisionValueBlocState.initial() = _Initial;
  const factory CalculateDivisionValueBlocState.nextPage() = _NextPage;
  const factory CalculateDivisionValueBlocState.showPage() = _ShowPage;
  const factory CalculateDivisionValueBlocState.error(String errorText) = _Error;
}
