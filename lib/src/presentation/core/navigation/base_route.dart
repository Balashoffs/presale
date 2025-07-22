import 'package:presale/src/presentation/bloc/core/navigation/navigation_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'dart:async';

const baseRoutePath = "/";

class BaseRoute extends GoRoute {
  BaseRoute({
    super.pageBuilder,
    super.parentNavigatorKey,
    FutureOr<String?> Function(BuildContext, GoRouterState)? redirect,
    super.routes,
  }) : super(
          path: baseRoutePath,
          redirect: (context, _) =>
              BlocProvider.of<NavigationCubit>(context).redirectBaseRoute(),
        );
}
