import 'package:flutter/material.dart';

import '../../../../../apps/bank_shots/lib/core/const/app_padding.dart';
import '../../../../../apps/bank_shots/lib/core/const/app_radius.dart';

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
          bottomLeft: Radius.circular(AppRadius.round),
          bottomRight: Radius.circular(AppRadius.round),
        ),
      ),
      child: child,
    );
  }
}
