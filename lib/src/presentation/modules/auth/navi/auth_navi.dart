import 'package:presale/src/di/di.dart';
import 'package:presale/src/presentation/bloc/auth/auth_cubit.dart';
import 'package:presale/src/presentation/core/navigation/validation_routes.dart';
import 'package:presale/src/presentation/modules/auth/auth_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const loginRoutePath = "/login";

class LoginRoute extends NoAuthNeedRoute {
  LoginRoute({
    String? path,
    String? name,
    Page Function(BuildContext, GoRouterState)? pageBuilder,
    GlobalKey<NavigatorState>? parentNavigatorKey,
    List<RouteBase> routes = const [],
  }) : super(
          path: path ?? loginRoutePath,
          name: name ?? (path ?? loginRoutePath).toUpperCase(),
          builder: (context, __) => AuthPage(
            onPasswordChanged: (value) => _authCubit(context).changePassword(value),
            onConfirmed: () => _authCubit(context).confirm(
              () {
                di.dataCubit.checkInit(
                  () async {
                    di.userRepository.login();
                  },
                  () {},
                );
                //
                // context.push('$loginRoutePath/$loginCodeRoutePath');
              },
            ),
            loadingStream: _authCubit(context)
                .stream
                .distinct((p, n) => p.formStage == n.formStage)
                .map((element) => element.formStage.isLoading),
            errorStream: _authCubit(context)
                .stream
                .distinct((p, n) => p.formError == n.formError)
                .map((element) => element.formError),
          ),
          pageBuilder: pageBuilder,
          parentNavigatorKey: parentNavigatorKey,
          routes: routes,
        );

  static AuthCubit _authCubit(BuildContext context) => BlocProvider.of<AuthCubit>(context);
}
