import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/core/navigation/validation_routes.dart';
import 'package:presale/src/presentation/modules/service_type_select/navi/service_navi.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/calculator_table.dart';
import 'package:presale/src/presentation/modules/v3/design/input/object_data_input/object_input_data_page.dart';

const inputDataRoutePath = "input_data_page";
// const divisionCalculateRoutePath = "calculate_division_page";
// const offerResultRoutePath = "offer_result_page";

class InputDataRoute extends GoRoute {
  InputDataRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.routes,
  }) : super(
         path: inputDataRoutePath,
         name: name ?? (path ?? inputDataRoutePath).toUpperCase(),
         pageBuilder: (context, state) =>
             AppPage(child: InputDataPage()),
       );
}

// class DivisionCalculateRoute extends GoRoute {
//   DivisionCalculateRoute({
//     String? path,
//     String? name,
//     super.builder,
//     Page Function(BuildContext, GoRouterState)? pageBuilder,
//     super.routes,
//   }) : super(
//          path: divisionCalculateRoutePath,
//          name: name ?? (path ?? divisionCalculateRoutePath).toUpperCase(),
//          pageBuilder: (context, state) => AppPage(child: DivisionCalculatePage()),
//          redirect: (context, state) {
//            return null;
//          },
//        );
// }



