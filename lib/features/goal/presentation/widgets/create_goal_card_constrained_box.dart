import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

final class CreateGoalCardConstrainedBox extends StatelessWidget {
  const CreateGoalCardConstrainedBox({
    required this.height,
    required this.child,
    required this.delay,
    super.key,
  });

  final double height;
  final Widget child;
  final int delay;

  @override
  Widget build(BuildContext context) {
    return BounceInDown(
      duration: Duration(milliseconds: delay),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: height,
          minHeight: height,
          minWidth: double.infinity,
        ),
        child: child,
      ),
    );
  }
}
