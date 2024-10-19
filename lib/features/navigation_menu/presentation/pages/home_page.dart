import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/const/app_padding.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/goal_grid_view_widget.dart';
import '../widgets/home_drawer_widget.dart';
import '../widgets/home_floating_action_button_widget.dart';
import '../widgets/home_info_naked_card_widget.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
                HomeInfoNakedCardWidget(),
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
      floatingActionButton: HomeFloatingActionButtonWidget(),
    );
  }
}
