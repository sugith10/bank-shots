import 'package:flutter/widgets.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_radius.dart';

final class GoalGridView extends StatelessWidget {
  const GoalGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
