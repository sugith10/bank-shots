import 'package:core_provider/core_provider.dart';
import 'package:core_utils/color/color_util.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

import '../goal_provider.dart';
import 'goal_icon.dart';
import 'goal_icon_picker_bottom_sheet.dart';
import 'goal_text_filed.dart';

class SetGoalTitleWidget extends ConsumerWidget {
  const SetGoalTitleWidget({
    required this.bgColor,
    required this.controller,
    super.key,
  });

  final Color bgColor;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const Spacer(),
        const _GoalIcon(),
        Padding(
          padding: const EdgeInsets.only(top: AppPadding.x12),
          child: Text(
            'Set your goal icon',
            style: context.bodyMedium?.copyWith(
              color: ColorUtil.get(
                backgroundColor: bgColor,
                dark: CoreColor.shadowFontDark,
                light: CoreColor.shadowFont,
              ),
            ),
          ),
        ),
        const Spacer(),
        Text(
          'Name your goal',
          style: context.titleLarge?.copyWith(
            color: ColorUtil.get(
              backgroundColor: bgColor,
              dark: CoreColor.fontOpposite,
              light: CoreColor.fontPrimary,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.x16),
          child: GoalTextField(
            controller: controller,
            minWidth: 200,
            onChanged: (value) =>
                ref.read(GoalProvider.goal.notifier).onValidTitle(title: value),
          ),
        ),
      ],
    );
  }
}

final class _GoalIcon extends ConsumerWidget {
  const _GoalIcon();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goal = ref.watch(GoalProvider.goal);
    return GestureDetector(
      onTap: () {
        GoalIconPickerBottomSheet().getIconSheet(context, ref);
      },
      child: GoalIcon(icon: goal.icon),
    );
  }
}
