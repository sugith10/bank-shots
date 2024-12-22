import 'package:core_assets/core_assets.dart.dart';
import 'package:core_design/core_design.dart';
import 'package:core_navigation/core_navigation.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

final class ViewGoalPage extends StatelessWidget {
  const ViewGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.home),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CommonAppBar(callback: context.pop),
              const Gap(40),
              SizedBox(
                height: size.height * 0.7,
                width: double.infinity,
                child: GoalCard(
                  child: Column(
                    children: [
                      const Gap(20),
                      Text(
                        'Goa Trip',
                        style: context.headlineLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(25),
                      const CircularPercentageIndicator(
                        size: 130,
                        strokeWidth: 18,
                        percentage: 60,
                        color: AssetColors.peachOrange,
                        backgroundColor: AssetColors.darkGrey1,
                      ),
                      const Gap(25),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: AppPadding.x20,
                        ),
                        child: Column(
                          children: [
                            _AmountWidget(
                              title: 'Saved',
                              amount: '7000',
                            ),
                            Gap(20),
                            _AmountWidget(
                              title: 'Target',
                              amount: '9000',
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: AssetColors.peachOrange,
                            ),
                            child: const Text('Update'),
                          ),
                        ),
                      ),
                      const Gap(20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final class _AmountWidget extends StatelessWidget {
  const _AmountWidget({
    required this.amount,
    required this.title,
  });
  final String title;
  final String amount;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: context.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
              color: Colors.white.withValues(alpha: 0.6),
            ),
          ),
          const Gap(2),
          FittedBox(
            child: Text(
              '₹$amount',
              style: context.displayMedium?.copyWith(
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
