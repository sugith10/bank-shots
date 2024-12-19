import 'package:go_router/go_router.dart';

import 'package:home/home.dart' as homeRoutes;

abstract class AppRoute {
  static final goRoute = GoRouter(
    routes: [
      ...homeRoutes.$appRoutes,
    ],
    initialLocation: '/home',
    routerNeglect: true,
  );
}
