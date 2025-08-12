import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/modules/v5/design/divisions/divisions_page.dart';
import 'package:presale/src/presentation/modules/v5/design/input/input_page.dart';
import 'package:presale/src/presentation/modules/v5/design/offer/result_commerce_offer_page/offer_page.dart';
import 'package:presale/src/presentation/modules/v5/design/resources/resources_page.dart';

const inputPath = "input";
const resourcesPath = "resources";
const divisionsPath = "divisions";
const offerPath = "offer";
const designInputGoRouterPath = "/$inputPath";
const designResourcesGoRouterPath = "$designInputGoRouterPath/$resourcesPath";
const designDivisionsGoRouterPath = "$designResourcesGoRouterPath/$divisionsPath";
const designOfferGoRouterPath = "$designDivisionsGoRouterPath/$offerPath";

class InputDataRoute extends GoRoute {
  InputDataRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.routes,
  }) : super(
    path: inputPath,
    name: name ?? (path ?? inputPath).toUpperCase(),
    pageBuilder: (context, state) =>
        AppPage(child: InputDataPage()),
  );
}

class ResourcesRoute extends GoRoute {
  ResourcesRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.routes,
  }) : super(
         path: resourcesPath,
         name: name ?? (path ?? resourcesPath).toUpperCase(),
         pageBuilder: (context, state) => AppPage(child: ResourcesPage()),
         redirect: (context, state) {
           return null;
         },
       );
}

class DivisionsRoute extends GoRoute {
  DivisionsRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.routes,
  }) : super(
    path: divisionsPath,
    name: name ?? (path ?? divisionsPath).toUpperCase(),
    pageBuilder: (context, state) => AppPage(child: DivisionsPage()),
    redirect: (context, state) {
      return null;
    },
  );
}




class OfferRoute extends GoRoute {
  OfferRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.routes,
  }) : super(
    path: offerPath,
    name: name ?? (path ?? offerPath).toUpperCase(),
    pageBuilder: (context, state) =>
        AppPage(child: OfferPage()),
  );
}




