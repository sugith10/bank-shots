import 'package:core_navigation/core_navigation.dart';
import 'package:flutter/material.dart';

import 'home/view/page/home_page.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(path: AppRoutes.home)
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
