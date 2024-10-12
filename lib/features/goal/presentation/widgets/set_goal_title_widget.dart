part of '../pages/create_goal_page.dart';

class _SetGoalTitleWidget extends ConsumerWidget {
  const _SetGoalTitleWidget({
    required this.bgColor,
    required this.controller,
    required this.inputBorder,
  });

  final Color bgColor;
  final TextEditingController controller;
  final OutlineInputBorder inputBorder;

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
            onChanged: (value) =>
                ref.read(goalProvider.notifier).onValidTitle(title: value),
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
    final goal = ref.watch(goalProvider);
    return GestureDetector(
      onTap: () {
        GoalIconPickerBottomSheet().getIconSheet(context, ref);
      },
      child: Container(
        height: 110,
        width: 110,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.x75),
          color: Colors.black.withOpacity(0.3),
        ),
        padding: const EdgeInsets.all(AppPadding.x16),
        child: SvgPicture.asset(goal.icon),
      ),
    );
  }
}
