import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_padding.dart';
import '../../../../core/const/app_radius.dart';
import '../../../../core/providers/app_providers.dart';

final class CreateGoalButton extends ConsumerWidget {
  const CreateGoalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goal = ref.watch(goalProvider);
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
          ref.read(goalProvider.notifier).onSetGoalName();
        } else if (!goal.validGoalAmount && goal.next) {
          ref.read(goalProvider.notifier).onSetGoalAmout();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.x20,
          vertical: 5,
        ),
        child: Text(
          'Next',
          style: context.titleLarge?.copyWith(
            fontWeight: FontWeight.bold,
            color: goal.next ? Colors.white : AppColor.shadowFont,
          ),
        ),
      ),
    );
  }
}
