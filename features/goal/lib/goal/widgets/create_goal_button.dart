import 'package:core_design/core_design.dart';
import 'package:core_provider/core_provider.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

import '../goal_provider.dart';

final class CreateGoalButton extends ConsumerWidget {
  const CreateGoalButton({
    required this.text,
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goal = ref.watch(GoalProvider.goal);
    return TextButton(
      style: TextButton.styleFrom(
        overlayColor: goal.next ? null : Colors.transparent,
        backgroundColor: goal.next
            ? const Color.fromARGB(255, 116, 95, 253)
            : Colors.white.withValues(alpha: .1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.round),
        ),
      ),
      onPressed: () {
        if (!goal.validTitle && goal.next) {
          ref.read(GoalProvider.goal.notifier).onSetGoalName();
        } else if (!goal.validGoalAmount && goal.next) {
          ref.read(GoalProvider.goal.notifier).onSetGoalAmout();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.x20,
          vertical: 5,
        ),
        child: Text(
          text,
          style: context.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: goal.next ? Colors.white : CoreColor.shadowFont,
          ),
        ),
      ),
    );
  }
}
