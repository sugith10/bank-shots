import 'package:core_navigation/navigation.dart';
import 'package:flutter/material.dart';

import 'home/pages/home_page.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(path: CoreRoutes.home)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
