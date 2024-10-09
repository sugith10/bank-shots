import 'dart:ui';

import 'package:flutter/material.dart';

import '../const/app_radius.dart';

final class GlassCardWidget extends StatelessWidget {
  final Widget child;
  const GlassCardWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(AppRadius.x20),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppRadius.x20),
            color: Colors.black.withOpacity(0.3),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
                spreadRadius: 5,
              ),
            ],
            border: Border.all(
              color: Colors.black.withOpacity(0.1),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
