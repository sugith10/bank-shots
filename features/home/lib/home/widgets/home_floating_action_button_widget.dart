import 'package:core_design/core_design.dart';
import 'package:core_navigation/core_navigation.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

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
//       backgroundColor: CoreColor.secondary,
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
          begin: Alignment.centerLeft,
          end: Alignment.topRight,
        ),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
        ),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.bottomLeft,
          end: Alignment.centerLeft,
        ),
        weight: 1,
      ),
    ]).animate(_controller);

    _bottomAlignmentAnimation = TweenSequence<Alignment>([
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.centerRight,
          end: Alignment.bottomLeft,
        ),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.bottomLeft,
          end: Alignment.topLeft,
        ),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.topLeft,
          end: Alignment.topRight,
        ),
        weight: 1,
      ),
      TweenSequenceItem<Alignment>(
        tween: Tween<Alignment>(
          begin: Alignment.topRight,
          end: Alignment.centerRight,
        ),
        weight: 1,
      ),
    ]).animate(_controller);

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                CoreColor.gradientPrimary,
                CoreColor.gradientSecondary,
              ],
              begin: _topAlignmentAnimation.value,
              end: _bottomAlignmentAnimation.value,
            ),
            borderRadius: BorderRadius.circular(
              AppRadius.x12,
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: CoreColor.boxShadow,
            //     spreadRadius: 1,
            //     blurRadius: 1,
            //     offset: const Offset(0, 1.5),
            //   ),
            // ],
          ),
          child: FloatingActionButton.extended(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppRadius.round),
            ),
            onPressed: () => GoRouterHelper(context).push(CoreRoutes.goal),
            label: Row(
              children: [
                const Icon(
                  AppIcons.graph,
                  color: Colors.white,
                ),
                const Gap(10),
                Text(
                  "Create Goal",
                  style: context.bodyLarge,
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
          ),
        );
      },
    );
  }
}
