import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final class BottomToTopTransition extends CustomTransitionPage<void> {
  BottomToTopTransition({
    required super.child,
    Duration duration = const Duration(milliseconds: 350),
  }) : super(
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            const begin = Offset(0, .5);
            const end = Offset.zero;
            const curve = Curves.ease;

            final tween = Tween(begin: begin, end: end).chain(
              CurveTween(curve: curve),
            );

            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: duration,
        );
}
