import 'package:core_provider/core_provider.dart';
import 'package:flutter/material.dart';

import 'my_app_view.dart';

final class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: const MyAppView());
  }
}
