import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
//
import 'package:presale/src/presentation/core/navigation/validation_routes.dart';

enum ViewerTab {
  employees,
  stages;

  const ViewerTab();

  String title() {
    switch (this) {
      case ViewerTab.employees:
        return 'Сотрудники';
      case ViewerTab.stages:
        return 'Стадии';
    }
  }
}

class ViewerNestedRoute extends AuthNeedRoute {
  final ViewerTab tab;

  ViewerNestedRoute({
    required String path,
    String? name,
    Widget Function(BuildContext, GoRouterState)? builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    GlobalKey<NavigatorState>? parentNavigatorKey,
    FutureOr<String?> Function(BuildContext, GoRouterState)? redirect,
    List<RouteBase> routes = const [],
    required this.tab,
  }) : super(
          path: path,
          name: name,
          builder: builder,
          pageBuilder: pageBuilder,
          parentNavigatorKey: parentNavigatorKey,
          redirect: redirect,
          routes: routes,
        );
}