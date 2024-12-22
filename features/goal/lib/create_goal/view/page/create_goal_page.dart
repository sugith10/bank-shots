import 'package:core_design/core_design.dart';
import 'package:flutter/material.dart';

final class CreateGoalPage extends StatelessWidget {
  const CreateGoalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Transform.scale(scale: 1.2, child: const GoalCard(child: SizedBox())),
          const Padding(
            padding: EdgeInsets.all(AppPadding.x40),
            child: SafeArea(
              child: GoalCard(child: Column()),
            ),
          ),
        ],
      ),
    );
  }
}
