import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_padding.dart';
import '../../../../core/providers/app_provider.dart';
import '../../../../core/util/color_util.dart';
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
        Spacer(),
        _GoalIcon(),
        Text('Set your goal icon',
            style: context.bodyMedium?.copyWith(
                color: ColorUtil.get(
              backgroundColor: bgColor,
              dark: AppColor.shadowFontDark,
              light: AppColor.shadowFont,
            ))).paddingOnly(top: AppPadding.x12),
        Spacer(),
        Text(
          'Name your goal',
          style: context.titleLarge?.copyWith(
              color: ColorUtil.get(
            backgroundColor: bgColor,
            dark: AppColor.fontOpposite,
            light: AppColor.fontPrimary,
          )),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: AppPadding.x16),
          child: GoalTextField(
            controller: controller,
            minWidth: 200,
            onChanged: (value) => ref
                .read(AppProvider.goalProvider.notifier)
                .onValidTitle(title: value),
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
    final goal = ref.watch(AppProvider.goalProvider);
    return GestureDetector(
      onTap: () {
        GoalIconPickerBottomSheet().getIconSheet(context, ref);
      },
      child: GoalIcon(icon: goal.icon),
    );
  }
}
