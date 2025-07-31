import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/presentation/core/navigation/not_found_page.dart';
import 'package:presale/src/presentation/modules/service_type_select/navi/service_navi.dart';
import 'package:presale/src/presentation/modules/v3/design/navi/service_navi.dart';
import 'package:presale/src/presentation/modules/v5/design/navi/service_navi.dart';

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
                  InputDataRoute(
                    routes: [
                      DivisionResourceCalculateRoute(
                        routes: [
                          DivisionMarginCalculateRoute(
                            routes: [DesignOfferRoute(routes: [])],
                          ),
                        ],
                      ),
                    ],
                  ),
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
