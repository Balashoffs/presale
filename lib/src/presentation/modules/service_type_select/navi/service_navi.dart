import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:presale/src/di/di.dart';
import 'package:presale/src/domain/models/v1/service_stage/service_stage.dart';
import 'package:presale/src/domain/models/v1/service_type/service_type.dart';
import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/core/navigation/app_routes.dart';
import 'package:presale/src/presentation/core/navigation/validation_routes.dart';
import 'package:presale/src/presentation/modules/service_type_select/object_table/object_table_page.dart';
import 'package:presale/src/presentation/modules/service_type_select/service_type_select_page.dart';
import 'package:presale/src/presentation/modules/service_type_select/stage_select/stage_select_page.dart';
import 'package:presale/src/presentation/modules/service_type_select/stages_table/stages_table_page.dart';
import 'package:presale/src/presentation/modules/v5/design/object_data_input/object_input_data_page.dart';

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
          path: path ?? serviceTypeRoutePath,
          name: name ?? (path ?? serviceTypeRoutePath).toUpperCase(),
          pageBuilder: (context, state) => AppPage(child: ServiceTypeSelectPage()),
        );
}

class InputRoute extends AuthNeedRoute {
  InputRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
    path: ':type/$stageSelectRoutePath',
    name: name ?? (path ?? stageSelectRoutePath).toUpperCase(),
    pageBuilder: (context, state) => AppPage(
      child: InputDataPage(
      ),
    ),
    redirect: (context, state) {
      if (ServiceType.fromUrl(state.pathParameters['type']) == null) {
        return defaultAuthorizedPath;
      }
      return null;
    },
  );
}

class StageTableRoute extends AuthNeedRoute {
  StageTableRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
          path: ':type/$stageSelectRoutePath',
          name: name ?? (path ?? stageSelectRoutePath).toUpperCase(),
          pageBuilder: (context, state) => AppPage(
            child: StageSelectPage(
              serviceType: ServiceType.fromUrl(state.pathParameters['type'])!,
            ),
          ),
          redirect: (context, state) {
            if (ServiceType.fromUrl(state.pathParameters['type']) == null) {
              return defaultAuthorizedPath;
            }
            return null;
          },
        );
}

class ObjectTableRoute extends AuthNeedRoute {
  ObjectTableRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
          path: ':stage/$objectTableRoutePath',
          name: name ?? (path ?? objectTableRoutePath).toUpperCase(),
          pageBuilder: (context, state) => AppPage(
            child: ObjectTablePage(
              serviceStage: ServiceStage.fromUrl(state.pathParameters['stage'])!,
            ),
          ),
          redirect: (context, state) {
            if (ServiceStage.fromUrl(state.pathParameters['stage']) == null) {
              return defaultAuthorizedPath;
            }
            di.objectTableCubit.setServiceStage(ServiceStage.fromUrl(state.pathParameters['stage'])!);
            return null;
          },
        );
}

class StagesTableRoute extends AuthNeedRoute {
  StagesTableRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
    path: stagesTableRoutePath,
    name: name ?? (path ?? stagesTableRoutePath).toUpperCase(),
    pageBuilder: (context, state) => AppPage(
      child: StagesTablePage(
        serviceStage: ServiceStage.fromUrl(state.pathParameters['stage'])!,
      ),
    ),
    redirect: (context, state) {
      if (ServiceStage.fromUrl(state.pathParameters['stage']) == null) {
        return defaultAuthorizedPath;
      }
      di.stagesTableCubit.setServiceStage(ServiceStage.fromUrl(state.pathParameters['stage'])!);
      return null;
    },
  );
}
