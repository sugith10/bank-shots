import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_padding.dart';
import '../../../../core/const/app_radius.dart';
import '../../../../core/widgets/glass_card_widget.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/card_row_widget.dart';
import '../widgets/home_floating_action_button.dart';

class MainNavigation extends StatelessWidget {
  const MainNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverSafeArea(
            sliver: SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.home),
              sliver: SliverList(
                delegate: SliverChildListDelegate(
                  [
                    const AppBarWidget(),
                    const Gap(40),
                    GlassCardWidget(
                      child: Column(
                        children: [
                          Gap(20),
                          Text(
                            'Total',
                            style: context.bodyLarge?.copyWith(
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            '\$ 125000',
                            style: context.headlineLarge?.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Gap(20),
                          CardRow(
                            title: 'Target',
                            amount: 25000,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: AppPadding.x16,
                            ),
                            child: Divider(
                              color: Colors.white.withOpacity(0.2),
                              thickness: 1.5,
                              indent: 40,
                              endIndent: 40,
                            ),
                          ),
                          CardRow(
                            title: 'Remaining',
                            amount: 25000,
                          ),
                          Gap(20),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'More Details >>',
                              style: context.bodySmall?.copyWith(
                                color: AppColor.shadowFont,
                              ),
                            ),
                          ),
                          Gap(10),
                        ],
                      ),
                    ),
                    const Gap(40),
                  ],
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.home),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Number of columns
                crossAxisSpacing: 16.0, // Spacing between columns
                mainAxisSpacing: 16.0, // Spacing between rows
                childAspectRatio: 1.0, // Aspect ratio of each item
              ),
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      color: AppColor.colorList[index],
                      borderRadius: BorderRadius.circular(AppRadius.x20),
                    ),
                  );
                },
                childCount: 10,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: HomeFloatingActionButton(),
    );
  }
}
