part of '../pages/create_goal_page.dart';

final class _SwipeText extends StatelessWidget {
  final Color color;
  const _SwipeText({
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Swipe to change the goal color >>',
      style: context.titleMedium?.copyWith(
        color: ColorUtil.get(
          backgroundColor: color,
          dark: AppColor.swipeDark,
          light: AppColor.swipeLight,
        ),
      ),
    );
  }
}
