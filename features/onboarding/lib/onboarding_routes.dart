import 'package:core_navigation/core_navigation.dart';
import 'package:flutter/material.dart';

import 'splash/ui/page/splash_page.dart';

part 'onboarding_routes.g.dart';

@immutable
@TypedGoRoute<GoalRoute>(path: AppRoutes.initial)
class GoalRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashPage();
  }
}
