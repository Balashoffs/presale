
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:presale/src/domain/models/v2/constructing/model/input/construction_state/section_data.dart';

part 'sections_table_state.dart';
part 'sections_table_cubit.freezed.dart';

class SectionsTableCubit extends Cubit<SectionsTableState> {
  SectionsTableCubit() : super(const SectionsTableState.initial());

  void loadData() async{
    //TODO
    /*
    1. Add preference storage repository
    2. Load List of Section data
    3. Make event with loading data
     */
  }
}
