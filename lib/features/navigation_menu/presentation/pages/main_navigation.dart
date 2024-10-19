import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/const/app_padding.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/goal_grid_view.dart';
import '../widgets/home_drawer.dart';
import '../widgets/home_floating_action_button.dart';
import '../widgets/home_info_naked_card.dart';

final class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: HomeDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                SafeArea(
                  child: Column(
                    children: [
                      Gap(10),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: AppPadding.home),
                        child: const AppBarWidget(),
                      ),
                    ],
                  ),
                ),
                HomeInfoNakedCard(),
                Gap(40),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.home),
            sliver: GoalGridView(),
          ),
        ],
      ),
      floatingActionButton: HomeFloatingActionButton(),
    );
  }
}
