import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_padding.dart';
import '../../../../core/util/color_util.dart';
import '../../../../core/widgets/glass_card_widget.dart';
import '../pages/create_goal_page.dart';
import 'set_current_balance_widget.dart';
import 'set_goal_title_widget.dart';

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
              Text(
                'Credit Card Payment',
                style: context.titleLarge?.copyWith(
                  fontWeight: FontWeight.w500,
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
                style: context.displayLarge?.copyWith(
                  fontWeight: FontWeight.w700,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: AppColor.fontOpposite,
                    light: AppColor.fontPrimary,
                  ),
                ),
              ),
              Gap(20),
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
                style: context.displayLarge?.copyWith(
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
