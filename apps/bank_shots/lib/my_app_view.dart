import 'package:core_utils/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'route/app_route.dart';

final class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Bank Shot',
      theme: AppTheme.theme,
      routerConfig: AppRoute.goRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
