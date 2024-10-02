import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../features/navigation_menu/presentation/pages/main_navigation.dart';

part 'app_route.g.dart';

@TypedGoRoute<MainNavigationRoute>(path: '/')
class MainNavigationRoute extends GoRouteData {
  const MainNavigationRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MainNavigation();
  }
}
