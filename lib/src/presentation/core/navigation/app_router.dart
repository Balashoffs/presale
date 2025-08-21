// import 'dart:async';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import 'package:presale/src/presentation/core/navigation/app_routes.dart';
// import 'package:presale/src/presentation/core/navigation/not_found_page.dart';
// import 'package:presale/src/presentation/modules/auth/navi/auth_navi.dart';
// import 'package:presale/src/presentation/modules/construction/navi/construction_navi.dart';
// import 'package:presale/src/presentation/modules/data_viewer/navi/data_viewer_navi.dart';
// import 'package:presale/src/presentation/modules/data_viewer/shell_navi.dart';
// import 'package:presale/src/presentation/modules/service_type_select/navi/service_navi.dart';
//
// import 'base_route.dart';
//
// class AppRouter extends GoRouter {
//   static final pathChangedController = StreamController<String>.broadcast();
//
//   Stream<String> get pathChangedStream => pathChangedController.stream;
//
//   static final _rootNavigatorKey = GlobalKey<NavigatorState>();
//
//   AppRouter()
//       : super.routingConfig(
//           routingConfig: _ConstantRoutingConfig(
//             RoutingConfig(
//               routes: [
//                 BaseRoute(
//                   parentNavigatorKey: _rootNavigatorKey,
//                 ),
//                 LoginRoute(parentNavigatorKey: _rootNavigatorKey,),
//                 ServiceTypeSelectRoute(
//                   parentNavigatorKey: _rootNavigatorKey,
//                   routes: [
//                     InputRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       routes: [
//                         ObjectTableRoute(
//                           parentNavigatorKey: _rootNavigatorKey,
//                           routes: [
//                             StagesTableRoute(
//                               parentNavigatorKey: _rootNavigatorKey,
//                             ),
//
//                           ],
//                         ),
//                       ],
//                     ),
//                     SaleCostRoute(
//                       parentNavigatorKey: _rootNavigatorKey,
//                       routes: [
//                         StagesSelectorRoute(
//                           parentNavigatorKey: _rootNavigatorKey,
//                           routes: [
//                             StagesWithSectionTableRoute(
//                               parentNavigatorKey: _rootNavigatorKey,
//                               routes: [
//                                 ResultTableRoute(
//                                   parentNavigatorKey: _rootNavigatorKey,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//                 ViewerShellRoute(
//                   nestedRoutes: [
//                     EmployeesViewerRoute(),
//                     StagesViewerRoute(),
//                   ],
//                 ),
//
//               ],
//               redirect: (context, state) {
//                 pathChangedController.add(state.matchedLocation);
//                 return null;
//               },
//             ),
//           ),
//           navigatorKey: _rootNavigatorKey,
//           initialLocation: defaultUnauthorizedPath,
//           debugLogDiagnostics: true,
//           errorBuilder: (context, state) => const NotFoundPage(),
//         );
// }
//
// class _ConstantRoutingConfig extends ValueListenable<RoutingConfig> {
//   const _ConstantRoutingConfig(this.value);
//
//   @override
//   void addListener(VoidCallback listener) {}
//
//   @override
//   void removeListener(VoidCallback listener) {}
//   @override
//   final RoutingConfig value;
// }
