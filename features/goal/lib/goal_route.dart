import 'package:core_navigation/core_navigation.dart';
import 'package:flutter/material.dart';

import 'goal/pages/create_goal_page.dart';

part 'goal_route.g.dart';

@immutable
@TypedGoRoute<GoalRoute>(path: CoreRoutes.goal)
class GoalRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreateGoalPage();
  }
}
