import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/core/navigation/validation_routes.dart';
import 'package:presale/src/presentation/modules/construction/object_input_data/object_input_data_page.dart';
import 'package:presale/src/presentation/modules/construction/selected_stage_as_table/selected_stage_as_table_page.dart';
import 'package:presale/src/presentation/modules/construction/stages_selector/select_page.dart';
import 'package:presale/src/presentation/modules/service_type_select/navi/service_navi.dart';
import 'package:presale/src/presentation/modules/service_type_select/service_type_select_page.dart';


const inputRoutePath = 'input';
const inputGoRoutePath = '$serviceTypeRoutePath/input';
const selectRoutePath = 'select';
const selectGoRoutePath = '$inputGoRoutePath/select';
const fillRoutePath = 'fill';
const fillGoRoutePath = '$selectGoRoutePath/fill';
const resultRoutePath = 'result';
const resultGoRoutePath = '$fillGoRoutePath/result';

class SaleCostRoute extends AuthNeedRoute {
  SaleCostRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
          path: path ?? inputRoutePath,
          name: name ?? (path ?? inputRoutePath).toUpperCase(),
          pageBuilder: (context, state) => AppPage(
            child: ObjectInputData(),
          ),
        );
}

class StagesSelectorRoute extends AuthNeedRoute {
  StagesSelectorRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
          path: selectRoutePath,
          name: name ?? (path ?? selectRoutePath).toUpperCase(),
          pageBuilder: (context, state) => AppPage(
            child: StagesSelectorPage(
            ),
          ),
        );
}

class StagesWithSectionTableRoute extends AuthNeedRoute {
  StagesWithSectionTableRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
          path: fillRoutePath,
          name: name ?? (path ?? fillRoutePath).toUpperCase(),
          pageBuilder: (context, state) => AppPage(
            child: SelectPage(id: 'fill'),
          ),
        );
}

class ResultTableRoute extends AuthNeedRoute {
  ResultTableRoute({
    String? path,
    String? name,
    super.builder,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    super.routes,
  }) : super(
    path: path ?? resultRoutePath,
    name: name ?? (path ?? resultRoutePath).toUpperCase(),
    pageBuilder: (context, state) => AppPage(child: ServiceTypeSelectPage()),
  );
}

