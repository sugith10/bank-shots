import 'package:core_provider/core_provider.dart';
import 'package:core_utils/color/color_util.dart';
import 'package:core_utils/core_utils.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../widgets/create_goal_bg_card.dart';
import '../widgets/create_goal_button.dart';
import '../widgets/create_goal_card.dart';
import '../widgets/create_goal_card_constrained_box.dart';
import '../widgets/create_goal_sub_card.dart';

part '../widgets/swipe_text.dart';

final class CreateGoalPage extends ConsumerStatefulWidget {
  const CreateGoalPage({super.key});

  @override
  ConsumerState<CreateGoalPage> createState() => _CreateGoalPageState();
}

final class _CreateGoalPageState extends ConsumerState<CreateGoalPage> {
  final TextEditingController _goalController = TextEditingController();
  final TextEditingController _goalAmountController = TextEditingController();
  final TextEditingController _goalBalanceController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      //ref.read(AppProvider.qouteProvider.notifier).onUpdateQoute();
    });
  }

  @override
  void dispose() {
    _goalController.dispose();
    _goalAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: CoreColor.scaffold,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CreateGoalBackGroundCard(
              height: size.height,
              color: CoreColor.secondary,
              delay: 1500,
              child: const Column(
                children: [
                  Spacer(),
                  CreateGoalButton(
                    //    text: 'Next',
                    text: 'Complete',
                  ),
                  Gap(20),
                ],
              ),
            ),
            CreateGoalCardConstrainedBox(
              delay: 2000,
              // height: size.height * 0.55,
              height: size.height * 0.85,
              child: LiquidSwipe.builder(
                disableUserGesture: false,
                itemCount: CoreColor.colorList.length,
                itemBuilder: (context, index) {
                  return CreateGoalCard(
                    color: CoreColor.colorList[index],
                    child: Column(
                      children: [
                        const Spacer(flex: 2),
                        CreateGoalSubCard(
                          titleController: _goalController,
                          goalAmountController: _goalAmountController,
                          goalBalanceController: _goalBalanceController,
                          height: size.height * 0.65,
                          bgColor: CoreColor.colorList[index],
                        ),
                        const Spacer(),
                        // _SwipeText(
                        //   color: CoreColor.colorList[index],
                        // )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
