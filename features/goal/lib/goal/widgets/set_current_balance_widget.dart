import 'package:core_provider/core_provider.dart';
import 'package:core_utils/color/color_util.dart';
import 'package:core_utils/core_utils.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';

import '../goal_provider.dart';
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
        const Spacer(flex: 2),
        Text(
          'Goal Amount',
          style: context.titleLarge?.copyWith(
            color: ColorUtil.get(
              backgroundColor: bgColor,
              dark: CoreColor.fontOpposite,
              light: CoreColor.fontPrimary,
            ),
          ),
        ),
        FittedBox(
          child: Consumer(
            builder: (_, WidgetRef ref, __) {
              final goal = ref.watch(GoalProvider.goal);
              return Text(
                '\$ ${goal.goalAmount}',
                style: context.displayLarge?.copyWith(
                  fontWeight: FontWeight.w900,
                  color: ColorUtil.get(
                    backgroundColor: bgColor,
                    dark: CoreColor.fontOpposite,
                    light: CoreColor.fontPrimary,
                  ),
                ),
              );
            },
          ),
        ),
        const Spacer(),
        Text(
          'Enter amount you have now',
          style: context.titleLarge?.copyWith(
            color: ColorUtil.get(
              backgroundColor: bgColor,
              dark: CoreColor.fontOpposite,
              light: CoreColor.fontPrimary,
            ),
          ),
        ),
        const Gap(20),
        Consumer(
          builder: (_, WidgetRef ref, __) {
            final goal = ref.watch(GoalProvider.goal);
            return GoalTextField(
              controller: goalBalanceController,
              borderColor: goal.error ? CoreColor.error : null,
              onChanged: (amount) => ref
                  .read(GoalProvider.goal.notifier)
                  .onValidCurrentBalanceAmount(amount: amount),
            );
          },
        ),
        const Gap(10),
        Align(
          alignment: FractionalOffset.bottomLeft,
          child: Consumer(
            builder: (_, WidgetRef ref, __) {
              final goal = ref.watch(GoalProvider.goal);
              return Text(
                goal.message,
                style: context.titleMedium?.copyWith(
                  color: CoreColor.error,
                ),
              );
            },
          ),
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
        //         dark: CoreColor.fontOpposite,
        //         light: CoreColor.fontPrimary,
        //       ),
        //     );
        //   },
        // ),
        const Spacer(),
      ],
    );
  }
}
