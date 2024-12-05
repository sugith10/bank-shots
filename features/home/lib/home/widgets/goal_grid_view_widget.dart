import 'package:core_utils/color/app_color.dart';
import 'package:core_utils/radius/app_radius.dart';
import 'package:flutter/widgets.dart';

final class GoalGridView extends StatelessWidget {
  const GoalGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns
        crossAxisSpacing: 16.0, // Spacing between columns
        mainAxisSpacing: 16.0, // Spacing between rows
        childAspectRatio: 1.0, // Aspect ratio of each item
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: AppColor.colorList[index],
              borderRadius: BorderRadius.circular(AppRadius.x20),
            ),
          );
        },
        childCount: 10,
      ),
    );
  }
}
