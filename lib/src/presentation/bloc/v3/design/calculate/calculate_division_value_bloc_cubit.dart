// import 'package:flutter/foundation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
//
// import 'package:presale/src/data/v3/design_calculator.dart';
// import 'package:presale/src/domain/models/v3/design/division_result/division_result.dart';
// import 'package:presale/src/domain/models/v3/design/divison/division.dart';
// import 'package:presale/src/presentation/bloc/v3/design/calculate/provider/row_divison_data_notifier.dart';
// import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/division_dto/divsion_dto_builder.dart';
// import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/division_row_data.dart';
//
// part 'calculate_division_value_bloc_state.dart';
//
// part 'calculate_division_value_bloc_cubit.freezed.dart';
//
// class CalculateDivisionValueBlocCubit
//     extends Cubit<CalculateDivisionValueBlocState> {
//   CalculateDivisionValueBlocCubit()
//     : _divisionDataNotifier = RowDivisionDataNotifier(),
//       super(const CalculateDivisionValueBlocState.initial());
//
//   final Map<Division, bool> _selectedDivisions = {};
//   final DesignOfferCalculator calculator = DesignOfferCalculator();
//
//   final RowDivisionDataNotifier _divisionDataNotifier;
//   RowDivisionDataNotifier get divisionDataNotifier => _divisionDataNotifier;
//
//   ValueNotifier<List<Division>> notSelectedDivisionsVN = ValueNotifier([]);
//
//   List<Division> get notSelectedDivisions => _selectedDivisions.entries
//       .where((element) => element.value == false)
//       .map((e) => e.key)
//       .toList();
//
//   void init() async {
//     List<Division> buildDivisions = await buildDivisionFrom(
//       pathToJobCost: 'assets/calculator_data/stavki.csv',
//       pathToDivisions: 'assets/calculator_data/razdely.csv',
//     );
//     for (var element in buildDivisions) {
//       _selectedDivisions[element] = false;
//     }
//
//     notSelectedDivisionsVN.value = notSelectedDivisions;
//     emit(CalculateDivisionValueBlocState.showPage());
//   }
//
//   void onNextPage() async {
//     if (_divisionDataNotifier.isValid) {
//       List<DivisionResult> results = _divisionDataNotifier.rowDivisionDataList
//           .map(
//             (e) => DivisionResult(
//               division: e.data,
//               clearDivisionRate: e.costPrice.value,
//               fullDivisionRate: e.costWithMargin.value,
//               fullDivisionRateWithTax: e.costWithMargin.value,
//             ),
//           )
//           .toList();
//
//       divisionDataNotifier.dispose();
//       notSelectedDivisionsVN.dispose();
//
//       emit(CalculateDivisionValueBlocState.nextPage());
//     } else {
//       emit(CalculateDivisionValueBlocState.error("Ни одна стадия не выбрана"));
//     }
//   }
//
//   void onAddedDivisionToTable(Division? division) {
//     if (division != null) {
//       _selectedDivisions[division] = true;
//       DivisionRowDataValueChangeNotifier rowData =
//           DivisionRowDataValueChangeNotifier(
//             data: division,
//             calculator: calculator,
//           );
//       _divisionDataNotifier.onAddedDivisionToTable(rowData);
//       notSelectedDivisionsVN.value = notSelectedDivisions;
//     }
//   }
//
//   void onRemoveDivisionRow(DivisionRowDataValueChangeNotifier rowData) {
//     Division division = _selectedDivisions.entries
//         .firstWhere(
//           (element) => element.key.shortName == rowData.data.shortName,
//         )
//         .key;
//     _selectedDivisions[division] = false;
//     _divisionDataNotifier.onRemoveDivisionRow(rowData);
//     rowData.dispose();
//     notSelectedDivisionsVN.value = notSelectedDivisions;
//   }
// }
