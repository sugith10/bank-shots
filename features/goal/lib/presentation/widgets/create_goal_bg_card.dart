import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

final class CreateGoalBackGroundCard extends StatelessWidget {
  const CreateGoalBackGroundCard({
    required this.height,
    required this.color,
    required this.delay,
    required this.child,
    super.key,
  });

  final double height;
  final Color color;
  final int delay;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BounceInDown(
      duration: Duration(milliseconds: delay),
      child: Container(
        height: height,
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
      ),
    );
  }
}
