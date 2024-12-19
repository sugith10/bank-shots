import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'home/pages/home_page.dart';

part 'home_route.g.dart';

@TypedGoRoute<HomeRoute>(path: '/home')
class HomeRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}
