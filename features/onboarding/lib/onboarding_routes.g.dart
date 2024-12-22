// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $goalRoute,
    ];

RouteBase get $goalRoute => GoRouteData.$route(
      path: '/',
      factory: $GoalRouteExtension._fromState,
    );

extension $GoalRouteExtension on GoalRoute {
  static GoalRoute _fromState(GoRouterState state) => GoalRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
