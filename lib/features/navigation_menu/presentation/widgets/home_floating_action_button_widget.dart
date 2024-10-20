import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_radius.dart';
import '../../../../core/route/app_route.dart';

// final class HomeFloatingActionButton extends StatelessWidget {
//   const HomeFloatingActionButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return FloatingActionButton.extended(
//       shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(AppRadius.round)),
//       icon: Icon(
//         IconlyBroken.graph,
//         color: Colors.white,
//       ),
//       onPressed: () {
//         //context.push(SamplePage());
//         CreateGoalRoute().push(context);
//       },
//       backgroundColor: AppColor.secondary,
//       label: Text(
//         'Add Shot',
//         style: context.bodyLarge,
//       ),
//     );
//   }
// }

final class HomeFloatingActionButtonWidget extends StatefulWidget {
  const HomeFloatingActionButtonWidget({
    super.key,
  });

  @override
  State<HomeFloatingActionButtonWidget> createState() =>
      _HomeFloatingActionButtonWidgetState();
}

final class _HomeFloatingActionButtonWidgetState
    extends State<HomeFloatingActionButtonWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Alignment> _topAlignmentAnimation;
  late Animation<Alignment> _bottomAlignmentAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 40),
    );

    _topAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.centerLeft, end: Alignment.topRight),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.topRight, end: Alignment.bottomLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomRight, end: Alignment.bottomLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomLeft, end: Alignment.centerLeft),
        weight: 1,
      ),
    ]).animate(_controller);

    _bottomAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.centerRight, end: Alignment.bottomLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.bottomLeft, end: Alignment.topLeft),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween:
            Tween<Alignment>(begin: Alignment.topLeft, end: Alignment.topRight),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
            begin: Alignment.topRight, end: Alignment.centerRight),
        weight: 1,
      ),
    ]).animate(_controller);

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    _topAlignmentAnimation;
    _bottomAlignmentAnimation;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, _) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.gradientPrimary,
                  AppColor.gradientSecondary,
                ],
                begin: _topAlignmentAnimation.value,
                end: _bottomAlignmentAnimation.value,
              ),
              borderRadius: BorderRadius.circular(
                AppRadius.round,
              ),
              // boxShadow: [
              //   BoxShadow(
              //     color: AppColor.boxShadow,
              //     spreadRadius: 1,
              //     blurRadius: 1,
              //     offset: const Offset(0, 1.5),
              //   ),
              // ],
            ),
            child: FloatingActionButton.extended(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(AppRadius.round)),
              onPressed: () => CreateGoalRoute().push(context),
              label: Row(
                children: [
                  Icon(
                    IconlyBroken.graph,
                    color: Colors.white,
                  ),
                  Gap(10),
                  Text(
                    "Create Goal",
                    style: context.bodyLarge,
                  ),
                ],
              ),
              backgroundColor: Colors.transparent,
            ),
          );
        });
  }
}
