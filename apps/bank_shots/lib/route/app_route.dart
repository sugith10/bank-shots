import 'package:core_navigation/navigation.dart';

import 'package:home/home.dart' as homeRoutes;
import 'package:goal/goal.dart' as goalRoutes;

abstract class AppRoute {
  static final goRoute = GoRouter(
    routes: [
      ...homeRoutes.$appRoutes,
      ...goalRoutes.$appRoutes,
    ],
    initialLocation: CoreRoutes.home,
    routerNeglect: true,
  );
}
