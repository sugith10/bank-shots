import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_padding.dart';
import '../../../../core/const/app_radius.dart';
import '../../../../core/formatter/amount_formatter.dart';
import '../../../../core/widgets/background_widget.dart';
import '../../../../core/widgets/glass_card_widget.dart';
import '../widgets/app_bar_widget.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundWidget(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.home),
              child: Column(
                children: [
                  const AppBarWidget(),
                  const Gap(40),
                  //GlassCardWidget(),

                  GlassCardWidget(
                    // decoration: BoxDecoration(
                    //   color: AppColor.card,
                    //   borderRadius: BorderRadius.circular(AppRadius.x20),
                    // ),
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
                          onPressed: () => null,
                          child: Text(
                            'More Details >>',
                            style: context.bodySmall?.copyWith(
                              color: Colors.white.withOpacity(0.6),
                            ),
                          ),
                        ),
                        Gap(10),
                      ],
                    ),
                  ),
                  Gap(40),
                  GridView.builder(
                      shrinkWrap:
                          true, // Add this to prevent infinite height error
                      physics:
                          NeverScrollableScrollPhysics(), // Prevent scrolling inside SingleChildScrollView
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Number of columns
                        crossAxisSpacing: 16.0, // Spacing between columns
                        mainAxisSpacing: 16.0, // Spacing between rows
                        childAspectRatio: 1.0, // Aspect ratio of each item
                      ),
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                            color: AppColor.card,
                            borderRadius: BorderRadius.circular(AppRadius.x20),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

final class CardRow extends StatelessWidget {
  final String title;
  final double amount;
  const CardRow({
    required this.title,
    required this.amount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.x40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.titleLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          Gap(10),
          Text(
            AmountFormatter.addCountry(amount),
            style: context.titleLarge?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
