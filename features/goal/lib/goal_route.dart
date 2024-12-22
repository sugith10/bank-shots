import 'package:core_navigation/core_navigation.dart';
import 'package:flutter/material.dart';

import 'creat_old/pages/create_goal_page.dart';
import 'home/view/pages/goal_home_page.dart';
import 'view_goal/view/page/view_goal_page.dart';

part 'goal_route.g.dart';

@TypedGoRoute<GoalRoute>(path: AppRoutes.goal)
class GoalRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const GoalHomePage();
  }
}

@TypedGoRoute<GoalCreateRoute>(path: AppRoutes.goalCreate)
class GoalCreateRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateGoalPage();
  }
}

@TypedGoRoute<GoalViewRoute>(path: AppRoutes.goalView)
class GoalViewRoute extends GoRouteData {
  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return BottomToTopTransition(
      child: const ViewGoalPage(),
    );
  }
}
