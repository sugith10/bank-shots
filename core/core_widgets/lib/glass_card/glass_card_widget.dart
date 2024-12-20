import 'dart:ui';

import 'package:core_utils/radius/app_radius.dart';
import 'package:flutter/material.dart';

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
      borderRadius: BorderRadius.circular(AppRadius.x20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.x20),
            color: color.withOpacity(0.3),
            boxShadow: [
              BoxShadow(
                color: color.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
            border: Border.all(
              color: color.withOpacity(0.1),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
