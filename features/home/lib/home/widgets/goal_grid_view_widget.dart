import 'package:core_utils/core_utils.dart';
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
        crossAxisSpacing: 16, // Spacing between columns
        mainAxisSpacing: 16, // Spacing between rows
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: CoreColor.colorList[index],
              borderRadius: BorderRadius.circular(AppRadius.x20),
            ),
          );
        },
        childCount: 10,
      ),
    );
  }
}
