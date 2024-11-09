import 'package:flutter/material.dart';

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
