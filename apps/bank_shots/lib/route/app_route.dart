import 'package:core_navigation/core_navigation.dart';
import 'package:home/home.dart' as home_routes;
import 'package:goal/goal.dart' as goal_routes;
import 'package:onboarding/onboarding.dart' as onboarding_routes;

abstract class AppRoute {
  static final goRoute = GoRouter(
    routes: [
      ...onboarding_routes.$appRoutes,
      ...home_routes.$appRoutes,
      ...goal_routes.$appRoutes,
    ],
    initialLocation: AppRoutes.initial,
    routerNeglect: true,
  );
}
