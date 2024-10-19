import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

import '../../features/goal/presentation/pages/create_goal_page.dart';
import '../../features/navigation_menu/presentation/pages/home_page.dart';

part 'app_route.g.dart';

@TypedGoRoute<MainNavigationRoute>(path: '/')
final class MainNavigationRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return HomePage();
  }
}

@TypedGoRoute<CreateGoalRoute>(path: '/createGoal')
final class CreateGoalRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CreateGoalPage();
  }
}
