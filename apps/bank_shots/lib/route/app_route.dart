import 'package:core_navigation/core_navigation.dart';
import 'package:home/home.dart' as home_routes;
import 'package:goal/goal.dart' as goal_routes;

abstract class AppRoute {
  static final goRoute = GoRouter(
    routes: [
      ...home_routes.$appRoutes,
      ...goal_routes.$appRoutes,
    ],
    initialLocation: CoreRoutes.home,
    routerNeglect: true,
  );
}
