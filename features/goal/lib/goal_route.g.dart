// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_route.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $goalRoute,
      $goalCreateRoute,
      $goalViewRoute,
    ];

RouteBase get $goalRoute => GoRouteData.$route(
      path: '/goal/home',
      factory: $GoalRouteExtension._fromState,
    );

extension $GoalRouteExtension on GoalRoute {
  static GoalRoute _fromState(GoRouterState state) => GoalRoute();

  String get location => GoRouteData.$location(
        '/goal/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $goalCreateRoute => GoRouteData.$route(
      path: '/goal/create',
      factory: $GoalCreateRouteExtension._fromState,
    );

extension $GoalCreateRouteExtension on GoalCreateRoute {
  static GoalCreateRoute _fromState(GoRouterState state) => GoalCreateRoute();

  String get location => GoRouteData.$location(
        '/goal/create',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $goalViewRoute => GoRouteData.$route(
      path: '/goal/view',
      factory: $GoalViewRouteExtension._fromState,
    );

extension $GoalViewRouteExtension on GoalViewRoute {
  static GoalViewRoute _fromState(GoRouterState state) => GoalViewRoute();

  String get location => GoRouteData.$location(
        '/goal/view',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
