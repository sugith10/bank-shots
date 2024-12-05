import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

final class GoalIcon extends StatelessWidget {
  const GoalIcon({
    required this.icon,
    this.showDecoration = true,
    super.key,
  });

  final bool showDecoration;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 110,
      decoration: showDecoration
          ? BoxDecoration(
              borderRadius: BorderRadius.circular(AppRadius.x75),
              color: Colors.black.withOpacity(0.3),
            )
          : null,
      padding: const EdgeInsets.all(AppPadding.x16),
      child: SvgPicture.asset(icon),
    );
  }
}
