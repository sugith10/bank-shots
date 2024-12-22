import 'package:core_design/core_design.dart';
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
      padding: const EdgeInsets.all(AppPadding.x20),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(AppRadius.round),
        ),
      ),
      child: child,
    );
  }
}
