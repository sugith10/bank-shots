part of '../pages/create_goal_page.dart';

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
        Spacer(flex: 1),
        Text(
          'Enter your goal amount?',
          style: context.titleLarge?.copyWith(
            color: ColorUtil.get(
              backgroundColor: bgColor,
              dark: AppColor.fontOpposite,
              light: AppColor.fontPrimary,
            ),
          ),
        ),
        SizedBox(height: 20),
        Consumer(builder: (context, ref, _) {
          final goal = ref.watch(AppProvider.goalProvider);
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
                      .read(AppProvider.goalProvider.notifier)
                      .onValidGoalAmount(amount: amount),
                ),
              ),
              SizedBox(height: 5),
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
        }),
        Spacer(),
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
        //                 dark: AppColor.shadowFontDark,
        //                 light: AppColor.shadowFont)),
        //       ),
        //     ),
        //   );
        // }),
      ],
    );
  }
}
