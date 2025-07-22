import 'package:presale/src/presentation/bloc/core/navigation/navigation_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class NoAuthNeedRoute extends GoRoute {
  NoAuthNeedRoute({
    required super.path,
    super.name,
    super.builder,
    super.pageBuilder,
    super.parentNavigatorKey,
    FutureOr<String?> Function(BuildContext, GoRouterState)? redirect,
    super.routes,
  }) : super(
          redirect: (context, state) async {
            var redirectPath = BlocProvider.of<NavigationCubit>(context)
                .redirectUnauthorizedRoute(state.matchedLocation);
            if (redirectPath == null && redirect != null) {
              redirectPath = await redirect(context, state);
            }
            return redirectPath;
          },
        );
}

class AuthNeedRoute extends GoRoute {
  AuthNeedRoute({
    required super.path,
    super.name,
    super.builder,
    super.pageBuilder,
    super.parentNavigatorKey,
    FutureOr<String?> Function(BuildContext, GoRouterState)? redirect,
    super.routes,
  }) : super(
          redirect: (context, state) async {
            var redirectPath = BlocProvider.of<NavigationCubit>(context)
                .redirectAuthorizedRoute(state.matchedLocation);
            if (redirectPath == null && redirect != null) {
              redirectPath = await redirect(context, state);
            }
            return redirectPath;
          },
        );
}
