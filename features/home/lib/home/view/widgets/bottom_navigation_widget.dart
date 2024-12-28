import 'package:core_design/core_design.dart';
import 'package:core_provider/core_provider.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../../home_providers.dart';

final class BottomNavigationWidget extends ConsumerWidget {
  const BottomNavigationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeProvider = ref.watch(HomeProvider.home);
    return CrystalNavigationBar(
      currentIndex: homeProvider.index,
      // indicatorColor: Colors.white,
      unselectedItemColor: Colors.white70,
      backgroundColor: Colors.black.withValues(alpha: .1),
      // outlineBorderColor: Colors.black.withOpacity(0.1),
      onTap: (index) =>
          ref.read(HomeProvider.home.notifier).updateIndex(index: index),
      splashColor: Colors.transparent,
      items: [
        /// Home
        CrystalNavigationBarItem(
          icon: AppIcons.homeBold,
          unselectedIcon: AppIcons.home,
          selectedColor: Colors.white,
        ),

        /// Favourite
        CrystalNavigationBarItem(
          icon: AppIcons.graphBold,
          unselectedIcon: AppIcons.graph,
          selectedColor: Colors.white,
        ),

        /// Add
        CrystalNavigationBarItem(
          icon: AppIcons.debtBold,
          unselectedIcon: AppIcons.debt,
          selectedColor: Colors.white,
        ),

        /// Profile
        CrystalNavigationBarItem(
          icon: AppIcons.profileBold,
          unselectedIcon: AppIcons.profile,
          selectedColor: Colors.white,
        ),
      ],
    );
  }
}
