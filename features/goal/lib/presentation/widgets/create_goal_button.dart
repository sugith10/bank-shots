import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:core_utils/color/app_color.dart';
import 'package:core_utils/padding/app_padding.dart';
import 'package:core_utils/radius/app_radius.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final class CreateGoalButton extends ConsumerWidget {
  final String text;
  const CreateGoalButton({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goal = ref.watch(AppProvider.goalProvider);
    return TextButton(
      style: TextButton.styleFrom(
        overlayColor: goal.next ? null : Colors.transparent,
        backgroundColor: goal.next
            ? const Color.fromARGB(255, 116, 95, 253)
            : Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.round),
        ),
      ),
      onPressed: () {
        if (!goal.validTitle && goal.next) {
          ref.read(AppProvider.goalProvider.notifier).onSetGoalName();
        } else if (!goal.validGoalAmount && goal.next) {
          ref.read(AppProvider.goalProvider.notifier).onSetGoalAmout();
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
            color: goal.next ? Colors.white : AppColor.shadowFont,
          ),
        ),
      ),
    );
  }
}
