import 'dart:async';

import 'package:presale/src/presentation/bloc/employee_repository.dart';
import 'package:presale/src/presentation/bloc/section_repository.dart';
import 'package:presale/src/presentation/core/navigation/app_page.dart';
import 'package:presale/src/presentation/core/navigation/nested_route.dart';
import 'package:presale/src/presentation/modules/data_viewer/employees/employees_viewer.dart';
import 'package:presale/src/presentation/modules/data_viewer/stages/stages_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const employeesViewerRoutePath = '/employees-viewer';
const stagesViewerRoutePath = '/stages-viewer';

class EmployeesViewerRoute extends ViewerNestedRoute {
  EmployeesViewerRoute({
    String? path,
    String? name,
    super.builder,
    Page<dynamic> Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    FutureOr<String?> Function(BuildContext, GoRouterState)? redirect,
    super.routes,
  }) : super(
    path: path ?? employeesViewerRoutePath,
    name: name ?? (path ?? employeesViewerRoutePath).toUpperCase(),
    pageBuilder: (context, state) => AppPage(
      key: ValueKey('employees viewer'),
      child: BlocBuilder<EmployeeRepository, EmployeeRepositoryState>(
        builder: (context, state) {
          return EmployeesViewer(
            employees: state.model ?? [],
            onLoad: () => _employeeRepository(context).load(),
          );
        }
      ),
    ),
    redirect: (context, state) async {
      return null;
    },
    tab: ViewerTab.employees,
  );

  static EmployeeRepository _employeeRepository(BuildContext context) =>
      BlocProvider.of<EmployeeRepository>(context);
}

class StagesViewerRoute extends ViewerNestedRoute {
  StagesViewerRoute({
    String? path,
    String? name,
    super.builder,
    Page<dynamic> Function(BuildContext, GoRouterState)? pageBuilder,
    super.parentNavigatorKey,
    FutureOr<String?> Function(BuildContext, GoRouterState)? redirect,
    super.routes,
  }) : super(
    path: path ?? stagesViewerRoutePath,
    name: name ?? (path ?? stagesViewerRoutePath).toUpperCase(),
    pageBuilder: (context, state) => AppPage(
      key: ValueKey('stages viewer'),
      child: BlocBuilder<SectionRepository, SectionRepositoryState>(
          builder: (context, state) {
            return SectionsViewer(
              sections: state.model ?? [],
              onLoad: () => _sectionRepository(context).load(),
            );
          }
      ),
    ),
    redirect: (context, state) async {
      return null;
    },
    tab: ViewerTab.stages,
  );

  static SectionRepository _sectionRepository(BuildContext context) =>
      BlocProvider.of<SectionRepository>(context);
}