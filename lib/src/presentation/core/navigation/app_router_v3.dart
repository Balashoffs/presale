import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/presentation/core/navigation/app_routes.dart';
import 'package:presale/src/presentation/core/navigation/not_found_page.dart';
import 'package:presale/src/presentation/modules/auth/navi/auth_navi.dart';
import 'package:presale/src/presentation/modules/construction/navi/construction_navi.dart';
import 'package:presale/src/presentation/modules/data_viewer/navi/data_viewer_navi.dart';
import 'package:presale/src/presentation/modules/data_viewer/shell_navi.dart';
import 'package:presale/src/presentation/modules/service_type_select/navi/service_navi.dart';
import 'package:presale/src/presentation/modules/v3/design/input/object_data_input/object_input_data_page.dart';
import 'package:presale/src/presentation/modules/v3/design/navi/service_navi.dart';

import 'base_route.dart';

class AppRouterV3 extends GoRouter {
  static final pathChangedController = StreamController<String>.broadcast();

  Stream<String> get pathChangedStream => pathChangedController.stream;

  AppRouterV3()
    : super.routingConfig(
        routingConfig: _ConstantRoutingConfig(
          RoutingConfig(
            routes: [
              ServiceTypeSelectRoute(
                routes: [
                  InputDataRoute(routes: [DivisionCalculateRoute(routes: []),])

                ],
              ),
            ],
            redirect: (context, state) {
              pathChangedController.add(state.matchedLocation);
              return null;
            },
          ),
        ),
        initialLocation: serviceTypeRoutePath,
        debugLogDiagnostics: true,
        errorBuilder: (context, state) => const NotFoundPage(),
      );
}

class _ConstantRoutingConfig extends ValueListenable<RoutingConfig> {
  const _ConstantRoutingConfig(this.value);

  @override
  void addListener(VoidCallback listener) {}

  @override
  void removeListener(VoidCallback listener) {}
  @override
  final RoutingConfig value;
}
