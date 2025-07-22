part of 'navigation_cubit.dart';

enum NavigationMode {
  unauthorized(defaultUnauthorizedPath),
  authorized(defaultAuthorizedPath);

  const NavigationMode(this.route);

  final String route;

  bool get isUnauthorized => this == NavigationMode.unauthorized;

  bool get isAuthorized => this == NavigationMode.authorized;

  static NavigationMode fromString(String route) =>
      NavigationMode.values.firstWhere(
        (role) => role.route == route,
        orElse: () => NavigationMode.unauthorized,
      );
}
