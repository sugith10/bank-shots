import 'dart:ui';

import 'package:flutter/material.dart';

import '../../radius/app_radius.dart';

final class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({
    required this.child,
    this.color = Colors.black,
    super.key,
  });
  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.x10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.x12),
            color: color.withValues(alpha: .3),
            boxShadow: [
              BoxShadow(
                color: color.withValues(alpha: .1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
            border: Border.all(
              color: color.withValues(alpha: .1),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
