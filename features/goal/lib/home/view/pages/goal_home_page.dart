import 'package:core_design/core_design.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/goal_grid_view_widget.dart';
import '../widgets/home_drawer_widget.dart';
import '../widgets/home_info_naked_card_widget.dart';
import '../widgets/view_customize_button.dart';

final class GoalHomePage extends StatelessWidget {
  const GoalHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      drawer: HomeDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: HomeBgWidget(
              child: Column(
                children: [
                  AppBarWidget(),
                  Gap(20),
                  HomeInfoCardWidget(),
                  ViewCustomizeButton(),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.home),
            sliver: GoalGridView(),
          ),
        ],
      ),
    );
  }
}
