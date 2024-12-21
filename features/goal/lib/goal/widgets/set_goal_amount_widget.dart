import 'package:core_design/core_design.dart';
import 'package:core_provider/core_provider.dart';
import 'package:core_utils/color/color_util.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

import '../goal_provider.dart';
import 'goal_text_filed.dart';

final class SetAmountWidget extends StatelessWidget {
  const SetAmountWidget({
    required this.bgColor,
    required this.goalAmountController,
    super.key,
  });

  final Color bgColor;
  final TextEditingController goalAmountController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'Enter your goal amount?',
          style: context.titleLarge?.copyWith(
            color: ColorUtil.get(
              backgroundColor: bgColor,
              dark: CoreColor.fontOpposite,
              light: CoreColor.fontPrimary,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Consumer(
          builder: (context, ref, _) {
            final goal = ref.watch(GoalProvider.goal);
            return Column(
              children: [
                DecoratedBox(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: goal.error ? Colors.red : Colors.transparent,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(AppRadius.x10),
                  ),
                  child: GoalTextField(
                    controller: goalAmountController,
                    onChanged: (amount) => ref
                        .read(GoalProvider.goal.notifier)
                        .onValidGoalAmount(amount: amount),
                  ),
                ),
                const SizedBox(height: 5),
                if (goal.error)
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Please enter a valid number.',
                      style: context.bodyLarge?.copyWith(
                        color: Colors.red,
                      ),
                    ),
                  ),
              ],
            );
          },
        ),
        const Spacer(),
        // Consumer(builder: (context, ref, _) {
        //   final qoute = ref.watch(qouteProvider).qoute;
        //   return SizedBox(
        //     height: 70,
        //     child: Center(
        //       child: Text(
        //         '"$qoute"',
        //         style: context.labelLarge?.copyWith(
        //             color: ColorUtil.get(
        //                 backgroundColor: bgColor,
        //                 dark: CoreColor.shadowFontDark,
        //                 light: CoreColor.shadowFont)),
        //       ),
        //     ),
        //   );
        // }),
      ],
    );
  }
}
