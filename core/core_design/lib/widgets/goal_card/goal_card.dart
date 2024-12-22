import 'package:core_assets/core_assets.dart.dart';
import 'package:flutter/material.dart';

import '../../core_design.dart';

final class GoalCard extends StatelessWidget {
  const GoalCard({
    required this.child,
    this.padding,
    super.key,
  });

  final Widget child;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.x20),
        gradient: LinearGradient(
          colors: [
            AssetColors.coralOrange, // End color
            AssetColors.coralOrange.withValues(alpha: 0),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: padding ?? const EdgeInsets.all(AppPadding.x16),
      child: GlassCardWidget(
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.x10),
          child: child,
        ),
      ),
    );
  }
}
