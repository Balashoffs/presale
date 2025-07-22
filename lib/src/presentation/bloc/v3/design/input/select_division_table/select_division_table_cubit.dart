// import 'package:equatable/equatable.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:presale/src/data/clients/v1/input_result_client.dart';
// import 'package:presale/src/data/core/db_client.dart';
// import 'package:presale/src/data/data_sources/v1/input_result_data_source.dart';
// import 'package:presale/src/domain/models/v2/constructing/model/input/input_repository.dart';
// import 'package:presale/src/domain/models/v2/constructing/model/input/input_result.dart';
// import 'package:presale/src/domain/models/v3/design/calc_division_row/calc_division_row.dart';
// import 'package:presale/src/domain/models/v3/design/division_result/division_result.dart';
// import 'package:presale/src/domain/models/v3/design/division_divisionName/division_divisionName.dart';
// import 'package:presale/src/domain/models/v3/design/divison/division.dart';
// import 'package:presale/src/domain/models/v3/design/input_data/input_data_design.dart';
// import 'package:presale/src/presentation/bloc/construction/object_input_data/object_input_data_cubit.dart';
// import 'package:presale/src/presentation/bloc/construction/provider/input_factors_value_notifier.dart';
//
// part 'select_division_table_state.dart';
//
// class SelectDivisionTableCubit extends Cubit<ObjectDataState> {
//   final InputResultClient _inputResultClient;
//   final DivisionResultClient _divisionResultClient;
//
//   late final InputData _inputResult;
//   final Map<String, Division> _divisionsSrc = {};
//   final Map<String, Division> _divisionsDest = {};
//   final Map<String, CalcDivisionRow> _calcDivisionRow;
//
//   SelectDivisionTableCubit({
//     required String resultId,
//     required DBClient dbClient,
//   })  : _inputResult = InputData(),
//         _inputResultClient =
//             InputResultClientImpl(InputResultDataSourceLocal(dbClient)),
//         super(InitialState()) {}
//
//   Future<void> init() async {}
//
//   void addDivision(String divisionName) {
//     Division? division = _divisionsSrc[divisionName];
//     if (division != null) {
//       _divisionsSrc.remove(divisionName);
//       _divisionsDest.putIfAbsent(
//         divisionName,
//         () => division,
//       );
//       CalcDivisionRow calcDivisionRow = CalcDivisionRow(division: division);
//       _calcDivisionRow.putIfAbsent(
//         divisionName,
//         () => calcDivisionRow,
//       );
//
//       //TODO update ui!!!
//     }
//   }
//
//   void removeDivision(String divisionName) {
//     Division? division = _divisionsDest[divisionName];
//     if (division != null) {
//       _divisionsDest.remove(divisionName);
//       _divisionsSrc.putIfAbsent(
//         divisionName,
//         () => division,
//       );
//       _calcDivisionRow.remove(divisionName);
//     }
//     //TODO update ui!!!
//   }
//
//   void updateDuration(String divisionName, double updated) {}
//
//   void updateComplexityFactor(String divisionName, double updated) {}
//
//   void updateBySquareFactor(String divisionName, double updated) {}
//
//   void updateByEmployeeUsedFactor(String divisionName, double updated) {}
//
//   void updateOverheadsValue(String divisionName, double updated) {}
//
//   void updateMarginValue(String divisionName, double updated) {}
//
//   Future<void> saveResult() async {}
// }
