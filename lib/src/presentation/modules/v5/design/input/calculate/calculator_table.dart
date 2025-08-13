// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:go_router/go_router.dart';
// import 'package:presale/src/domain/models/v3/design/divison/division.dart';
//
// import 'package:presale/src/presentation/bloc/v3/design/calculate/calculate_division_value_bloc_cubit.dart';
// import 'package:presale/src/presentation/bloc/v3/design/calculate/provider/summary_change_notifier.dart';
// import 'package:presale/src/presentation/modules/v3/design/common/collum_attributes.dart';
// import 'package:presale/src/presentation/modules/v3/design/common/custom_app_bar.dart';
// import 'package:presale/src/presentation/modules/v3/design/common/custom_circle_loader.dart';
// import 'package:presale/src/presentation/modules/v3/design/input/calculate/model/division_row_data.dart';
// import 'package:presale/src/presentation/modules/v3/design/input/calculate/widget/calculator_dropdowm_widget.dart';
// import 'package:presale/src/presentation/modules/v3/design/input/calculate/widget/divisons_table_widget.dart';
// import 'package:presale/src/presentation/modules/v3/design/input/calculate/widget/next_page_widget.dart';
// import 'package:presale/src/presentation/modules/v3/design/input/calculate/widget/result_sum_widget.dart';
// import 'package:provider/provider.dart';
//
// class DivisionCalculatePage extends StatelessWidget {
//   const DivisionCalculatePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return CustomAppBar(
//       pathToRootRoute: '/',
//       title: 'Расчет стоимости разработки документации',
//       child: CalculatorTableBlocProvider(),
//     );
//   }
// }
//
// class CalculatorTableBlocProvider extends StatelessWidget {
//   const CalculatorTableBlocProvider({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<CalculateDivisionValueBlocCubit>(
//       create: (context) {
//         return CalculateDivisionValueBlocCubit()..init();
//       },
//       child: CalculatorTableBlocConsumer(),
//     );
//   }
// }
//
// class CalculatorTableBlocConsumer extends StatelessWidget {
//   const CalculatorTableBlocConsumer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocConsumer<
//       CalculateDivisionValueBlocCubit,
//       CalculateDivisionValueBlocState
//     >(
//       builder: (context, state) {
//         return state.mapOrNull(
//               initial: (value) => CustomCircleLoader(),
//               showPage: (value) => CalculatorDivisionsTableStory(),
//             ) ??
//             SizedBox();
//       },
//       listener: (context, state) {
//         state.whenOrNull(nextPage: () => context.go(''));
//       },
//     );
//   }
// }
//
// class CalculatorDivisionsTableStory extends StatelessWidget {
//   const CalculatorDivisionsTableStory({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Expanded(
//           flex: 1,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Padding(
//                 padding: EdgeInsets.all(16.0),
//                 child: ValueListenableBuilder<List<Division>>(
//                   valueListenable: context
//                       .read<CalculateDivisionValueBlocCubit>()
//                       .notSelectedDivisionsVN,
//                   builder: (context, value, child) {
//                     return CalculatorDrowDownWidget(
//                       enabled: value.isNotEmpty,
//                       divisions: value,
//                       selectedItem: context
//                           .read<CalculateDivisionValueBlocCubit>()
//                           .onAddedDivisionToTable,
//                     );
//                   },
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: ValueListenableBuilder<double>(
//                   valueListenable: context
//                       .read<CalculateDivisionValueBlocCubit>()
//                       .divisionDataNotifier
//                       .summary
//                       .summary,
//                   builder: (context, value, child) {
//                     return ResultSumWidget(
//                       name: 'Себестоимость, рубл.',
//                       value: value.toStringAsFixed(2),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//         Expanded(
//           flex: 8,
//           child: Builder(
//             builder: (context) {
//               return ValueListenableBuilder<
//                 List<DivisionRowDataValueChangeNotifier>
//               >(
//                 valueListenable: context
//                     .read<CalculateDivisionValueBlocCubit>()
//                     .divisionDataNotifier
//                     .rowDivisionDataListVN,
//                 builder: (context, value, child) {
//                   return DivisionsTableWidget(
//                     rowAttributes: divisionTableAttributes,
//                     tableDataRows: value,
//                     onRemoveRow: context
//                         .read<CalculateDivisionValueBlocCubit>()
//                         .onRemoveDivisionRow,
//                   );
//                 },
//               );
//             },
//           ),
//         ),
//         Expanded(
//           flex: 1,
//           child: NextPageWidget(
//             onTap: context.read<CalculateDivisionValueBlocCubit>().onNextPage,
//           ),
//         ),
//       ],
//     );
//   }
// }
