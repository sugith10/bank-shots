// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $mainNavigationRoute,
      $createGoalRoute,
    ];

RouteBase get $mainNavigationRoute => GoRouteData.$route(
      path: '/',
      factory: $MainNavigationRouteExtension._fromState,
    );

extension $MainNavigationRouteExtension on MainNavigationRoute {
  static MainNavigationRoute _fromState(GoRouterState state) =>
      const MainNavigationRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $createGoalRoute => GoRouteData.$route(
      path: '/createGoal',
      factory: $CreateGoalRouteExtension._fromState,
    );

extension $CreateGoalRouteExtension on CreateGoalRoute {
  static CreateGoalRoute _fromState(GoRouterState state) =>
      const CreateGoalRoute();

  String get location => GoRouteData.$location(
        '/createGoal',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
