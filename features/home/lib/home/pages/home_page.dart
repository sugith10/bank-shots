import 'package:core_design/core_design.dart';
import 'package:flutter/material.dart';

import '../widgets/app_bar_widget.dart';
import '../widgets/goal_grid_view_widget.dart';
import '../widgets/home_drawer_widget.dart';
import '../widgets/home_floating_action_button_widget.dart';
import '../widgets/home_info_naked_card_widget.dart';
import '../widgets/view_customize_button.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: HomeDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverGap(10),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.home),
            sliver: SliverToBoxAdapter(child: AppBarWidget()),
          ),
          SliverToBoxAdapter(child: HomeInfoCardWidget()),
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: AppPadding.home),
            sliver: SliverToBoxAdapter(child: ViewCustomizeButton()),
          ),
          SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: AppPadding.home),
            sliver: GoalGridView(),
          ),
        ],
      ),
      floatingActionButton: HomeFloatingActionButtonWidget(),
    );
  }
}
