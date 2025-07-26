import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/core/navigation/validation_routes.dart';
import 'package:presale/src/presentation/modules/service_type_select/navi/service_navi.dart';
import 'package:presale/src/presentation/modules/v3/design/input/calculate/calculator_table.dart';
import 'package:presale/src/presentation/modules/v3/design/input/object_data_input/object_input_data_page.dart';
import 'package:presale/src/presentation/modules/v4/design/division_resource_calculate/division_resorce_calculator_page.dart';

const divisionResourceCalculateRoutePath = "calculate_division_resource_page";


class DivisionResourceCalculateRoute extends GoRoute {
  DivisionResourceCalculateRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.routes,
  }) : super(
         path: divisionResourceCalculateRoutePath,
         name: name ?? (path ?? divisionResourceCalculateRoutePath).toUpperCase(),
         pageBuilder: (context, state) => AppPage(child: DivisionResourceCalculatePage()),
         redirect: (context, state) {
           return null;
         },
       );
}



