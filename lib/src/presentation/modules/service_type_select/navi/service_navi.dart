import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/modules/service_type_select/service_type_select_page.dart';



const serviceTypePath = "/";
const serviceTypeRoutePath = "/";
const stageSelectRoutePath = "stage-select";
const objectTableRoutePath = "object-table";
const stagesTableRoutePath = "stages-table";

class ServiceTypeSelectRoute extends GoRoute {
  ServiceTypeSelectRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
          path: path ?? serviceTypePath,
          name: name ?? (path ?? serviceTypePath).toUpperCase(),
          pageBuilder: (context, state) => AppPage(child: ServiceTypeSelectPage()),
        );
}

// class InputRoute extends AuthNeedRoute {
//   InputRoute({
//     String? path,
//     String? name,
//     super.builder,
//     Page Function(BuildContext, GoRouterState)? pageBuilder,
//     super.parentNavigatorKey,
//     super.routes,
//   }) : super(
//     path: ':type/$stageSelectRoutePath',
//     name: name ?? (path ?? stageSelectRoutePath).toUpperCase(),
//     pageBuilder: (context, state) => AppPage(
//       child: InputDataPage(
//       ),
//     ),
//     redirect: (context, state) {
//       if (ServiceType.fromUrl(state.pathParameters['type']) == null) {
//         return defaultAuthorizedPath;
//       }
//       return null;
//     },
//   );
// }
//
// class StageTableRoute extends AuthNeedRoute {
//   StageTableRoute({
//     String? path,
//     String? name,
//     super.builder,
//     Page Function(BuildContext, GoRouterState)? pageBuilder,
//     super.parentNavigatorKey,
//     super.routes,
//   }) : super(
//           path: ':type/$stageSelectRoutePath',
//           name: name ?? (path ?? stageSelectRoutePath).toUpperCase(),
//           pageBuilder: (context, state) => AppPage(
//             child: StageSelectPage(
//               serviceType: ServiceType.fromUrl(state.pathParameters['type'])!,
//             ),
//           ),
//           redirect: (context, state) {
//             if (ServiceType.fromUrl(state.pathParameters['type']) == null) {
//               return defaultAuthorizedPath;
//             }
//             return null;
//           },
//         );
// }
//
// class ObjectTableRoute extends AuthNeedRoute {
//   ObjectTableRoute({
//     String? path,
//     String? name,
//     super.builder,
//     Page Function(BuildContext, GoRouterState)? pageBuilder,
//     super.parentNavigatorKey,
//     super.routes,
//   }) : super(
//           path: ':stage/$objectTableRoutePath',
//           name: name ?? (path ?? objectTableRoutePath).toUpperCase(),
//           pageBuilder: (context, state) => AppPage(
//             child: ObjectTablePage(
//               serviceStage: ServiceStage.fromUrl(state.pathParameters['stage'])!,
//             ),
//           ),
//           redirect: (context, state) {
//             if (ServiceStage.fromUrl(state.pathParameters['stage']) == null) {
//               return defaultAuthorizedPath;
//             }
//             di.objectTableCubit.setServiceStage(ServiceStage.fromUrl(state.pathParameters['stage'])!);
//             return null;
//           },
//         );
// }
//
// class StagesTableRoute extends AuthNeedRoute {
//   StagesTableRoute({
//     String? path,
//     String? name,
//     super.builder,
//     Page Function(BuildContext, GoRouterState)? pageBuilder,
//     super.parentNavigatorKey,
//     super.routes,
//   }) : super(
//     path: stagesTableRoutePath,
//     name: name ?? (path ?? stagesTableRoutePath).toUpperCase(),
//     pageBuilder: (context, state) => AppPage(
//       child: StagesTablePage(
//         serviceStage: ServiceStage.fromUrl(state.pathParameters['stage'])!,
//       ),
//     ),
//     redirect: (context, state) {
//       if (ServiceStage.fromUrl(state.pathParameters['stage']) == null) {
//         return defaultAuthorizedPath;
//       }
//       di.stagesTableCubit.setServiceStage(ServiceStage.fromUrl(state.pathParameters['stage'])!);
//       return null;
//     },
//   );
// }
