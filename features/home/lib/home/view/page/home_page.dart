import 'package:core_provider/core_provider.dart';
import 'package:flutter/material.dart';

import '../../../home_providers.dart';
import '../widgets/bottom_navigation_widget.dart';

final class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homePrvoider = ref.watch(HomeProvider.home);

    return Scaffold(
      backgroundColor: Colors.transparent,
      extendBody: true,
      body: homePrvoider.widget,
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
