import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:core_assets/gen/assets.gen.dart';
import 'package:core_provider/core_provider.dart';
import 'package:core_utils/color/color_util.dart';
import 'package:core_utils/core_utils.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';

import 'goal_icon.dart';

final class CreateGoalSubCard extends ConsumerWidget {
  const CreateGoalSubCard({
    required this.height,
    required this.bgColor,
    required this.titleController,
    required this.goalAmountController,
    required this.goalBalanceController,
    super.key,
  });

  final double height;
  final Color bgColor;
  final TextEditingController titleController;
  final TextEditingController goalAmountController;
  final TextEditingController goalBalanceController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GlassCardWidget(
      color: ColorUtil.glassCardBgFromColorList(bgColor),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.x16),
          // child: SetGoalTitleWidget(
          //   bgColor: bgColor,
          //   controller: titleController,
          // ),

          // child: SetAmountWidget(
          //   bgColor: bgColor,
          //   goalAmountController: goalAmountController,
          // ),

          // child: SetCurrentBalanceWidget(
          //   bgColor: bgColor,
          //   goalBalanceController: goalBalanceController,
          // ),

          child: Column(
            children: [
              const Spacer(),
              GoalIcon(
                icon: Assets.svg.apple,
                showDecoration: false,
              ),
              const Gap(20),
              Text(
                'Credit Card Payment',
                style: context.displaySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: CoreColor.fontOpposite,
                    light: CoreColor.fontPrimary,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              const Gap(15),
              Text(
                r'$ 5000',
                style: context.displayLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: CoreColor.fontOpposite,
                    light: CoreColor.fontPrimary,
                  ),
                ),
              ),
              const Gap(10),
              const Divider(),
              const Gap(10),
              Text(
                'Current Balance',
                style: context.titleLarge?.copyWith(
                  // fontWeight: FontWeight.w700,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: CoreColor.fontOpposite,
                    light: CoreColor.fontPrimary,
                  ),
                ),
              ),
              const Gap(10),
              Text(
                r'$ 5000',
                style: context.displaySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: CoreColor.fontOpposite,
                    light: CoreColor.fontPrimary,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
