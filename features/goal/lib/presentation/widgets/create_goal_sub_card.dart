import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../../apps/bank_shots/lib/core/color/app_color.dart';
import '../../../../../apps/bank_shots/lib/core/const/app_padding.dart';
import '../../../../../apps/bank_shots/lib/core/gen/assets.gen.dart';
import '../../../../../apps/bank_shots/lib/core/util/color_util.dart';
import '../../../../../apps/bank_shots/lib/core/widgets/glass_card_widget.dart';
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
              Spacer(),
              GoalIcon(
                icon: Assets.svg.apple,
                showDecoration: false,
              ),
              Gap(20),
              Text(
                'Credit Card Payment',
                style: context.displaySmall?.copyWith(
                  fontWeight: FontWeight.w500,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: AppColor.fontOpposite,
                    light: AppColor.fontPrimary,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              Gap(15),
              Text(
                '\$ 5000',
                style: context.displayLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: AppColor.fontOpposite,
                    light: AppColor.fontPrimary,
                  ),
                ),
              ),
              Gap(10),
              Divider(),
              Gap(10),
              Text(
                'Current Balance',
                style: context.titleLarge?.copyWith(
                  // fontWeight: FontWeight.w700,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: AppColor.fontOpposite,
                    light: AppColor.fontPrimary,
                  ),
                ),
              ),
              Gap(10),
              Text(
                '\$ 5000',
                style: context.displaySmall?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: AppColor.fontOpposite,
                    light: AppColor.fontPrimary,
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
