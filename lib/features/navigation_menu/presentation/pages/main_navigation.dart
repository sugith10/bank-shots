import 'package:bank_shots/features/goal/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

import '../widgets/navigation_bottom_bar.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomePage(),
      bottomNavigationBar: NavigationBottomBar(),
    );
  }
}
