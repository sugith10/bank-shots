import 'package:core_utils/padding/app_padding.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';

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
      drawer: const HomeDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SafeArea(
                  child: Column(
                    children: [
                      Gap(10),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: AppPadding.home),
                        child: AppBarWidget(),
                      ),
                    ],
                  ),
                ),
                const HomeInfoNakedCardWidget(),
                const Gap(40),
              ],
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.home),
            sliver: GoalGridView(),
          ),
        ],
      ),
      floatingActionButton: const HomeFloatingActionButtonWidget(),
    );
  }
}
