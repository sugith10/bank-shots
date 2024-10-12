part of '../pages/create_goal_page.dart';

final class _CreateGoalSubCard extends ConsumerWidget {
  const _CreateGoalSubCard({
    required this.height,
    required this.bgColor,
    required this.titleController,
    required this.goalAmountController,
  });

  final double height;
  final Color bgColor;
  final TextEditingController titleController;
  final TextEditingController goalAmountController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GlassCardWidget(
      color: ColorUtil.glassCardBgFromColorList(bgColor),
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.x16),
          // child: _SetGoalTitleWidget(
          //   bgColor: bgColor,
          //   controller: titleController,
          //   inputBorder: inputBorder,
          // ),
          child: _GoalAmountWidget(
              bgColor: bgColor, goalAmountController: goalAmountController),
        ),
      ),
    );
  }
}
