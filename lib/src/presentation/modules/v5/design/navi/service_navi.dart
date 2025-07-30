import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/modules/v5/design/division_resource_calculate/division_resorce_calculator_page.dart';

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



