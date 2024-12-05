import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:core_utils/color/app_color.dart';
import 'package:core_utils/color/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

import 'goal_text_filed.dart';

final class SetCurrentBalanceWidget extends StatelessWidget {
  const SetCurrentBalanceWidget({
    required this.bgColor,
    required this.goalBalanceController,
    super.key,
  });

  final Color bgColor;
  final TextEditingController goalBalanceController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 2),
        Text(
          'Goal Amount',
          style: context.titleLarge?.copyWith(
            color: ColorUtil.get(
              backgroundColor: bgColor,
              dark: AppColor.fontOpposite,
              light: AppColor.fontPrimary,
            ),
          ),
        ),
        FittedBox(
          child: Consumer(
            builder: (_, WidgetRef ref, __) {
              final goal = ref.watch(AppProvider.goalProvider);
              return Text(
                '\$ ${goal.goalAmount}',
                style: context.displayLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: AppColor.fontOpposite,
                    light: AppColor.fontPrimary,
                  ),
                ),
              );
            },
          ),
        ),
        Spacer(),
        Text(
          'Enter amount you have now',
          style: context.titleLarge?.copyWith(
            color: ColorUtil.get(
              backgroundColor: bgColor,
              dark: AppColor.fontOpposite,
              light: AppColor.fontPrimary,
            ),
          ),
        ),
        Gap(20),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final goal = ref.watch(AppProvider.goalProvider);
            return GoalTextField(
              controller: goalBalanceController,
              borderColor: goal.error ? AppColor.error : null,
              onChanged: (amount) => ref
                  .read(AppProvider.goalProvider.notifier)
                  .onValidCurrentBalanceAmount(amount: amount),
            );
          },
        ),
        Gap(10),
        Align(
          alignment: FractionalOffset.bottomLeft,
          child: Consumer(builder: (_, WidgetRef ref, __) {
            final goal = ref.watch(AppProvider.goalProvider);
            return Text(
              goal.message,
              style: context.titleMedium?.copyWith(
                color: AppColor.error,
              ),
            );
          }),
        ),
        // Consumer(
        //   builder: (_, WidgetRef ref, __) {
        //     final goal = ref.watch(AppProvider.goalProvider);
        //     return Slider.adaptive(
        //       value: goal.currentBalance,
        //       max: goal.goalAmount ?? 2000,
        //       onChanged: (value) {
        //         print('${value} ${goal.goalAmount}');
        //         ref
        //             .read(AppProvider.goalProvider.notifier)
        //             .onSlideCurrentBalance(value: value);
        //       },
        //       label: goal.currentBalance.toString(),
        //       activeColor: ColorUtil.get(
        //         backgroundColor: bgColor,
        //         dark: AppColor.fontOpposite,
        //         light: AppColor.fontPrimary,
        //       ),
        //     );
        //   },
        // ),
        const Spacer(),
      ],
    );
  }
}
