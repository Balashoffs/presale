import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/modules/v3/design/input/object_data_input/object_input_data_page.dart';
import 'package:presale/src/presentation/modules/v3/design/input/offer/result_commerce_offer_page/offer_page.dart';

const inputDataRoutePath = "input_data_page";
const designOfferPath = "design_offer_page";

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

class DesignOfferRoute extends GoRoute {
  DesignOfferRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.routes,
  }) : super(
    path: designOfferPath,
    name: name ?? (path ?? designOfferPath).toUpperCase(),
    pageBuilder: (context, state) =>
        AppPage(child: DesignOfferPage()),
  );
}



