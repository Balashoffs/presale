import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'division_resource_calculate_state.dart';
part 'division_resource_calculate_cubit.freezed.dart';

class DivisionResourceCalculateCubit extends Cubit<DivisionResourceCalculateState> {
  DivisionResourceCalculateCubit() : super(const DivisionResourceCalculateState.initial());
}
