import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'core/theme/app_theme.dart';
import 'core/route/app_route.dart';

final GoRouter _router = GoRouter(routes: $appRoutes);

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        title: 'Bank Shot', theme: AppTheme.theme, routerConfig: _router);
  }
}
