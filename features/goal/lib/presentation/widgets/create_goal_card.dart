import 'package:core_utils/padding/app_padding.dart';
import 'package:core_utils/radius/app_radius.dart';
import 'package:flutter/material.dart';

final class CreateGoalCard extends StatelessWidget {
  const CreateGoalCard({
    required this.child,
    required this.color,
    super.key,
  });

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(AppPadding.x20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(AppRadius.round),
        ),
      ),
      child: child,
    );
  }
}
