import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:core_utils/color/app_color.dart';
import 'package:core_utils/color/color_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../widgets/create_goal_sub_card.dart';
import '../widgets/create_goal_button.dart';
import '../widgets/create_goal_bg_card.dart';
import '../widgets/create_goal_card.dart';
import '../widgets/create_goal_card_constrained_box.dart';
import '../widgets/goal_text_filed.dart';

part '../widgets/swipe_text.dart';
part '../widgets/set_goal_amount_widget.dart';

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
      ref.read(AppProvider.qouteProvider.notifier).onUpdateQoute();
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
      backgroundColor: AppColor.scaffold,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            CreateGoalBackGroundCard(
              height: size.height,
              color: AppColor.secondary,
              delay: 1500,
              child: Column(
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
                itemCount: AppColor.colorList.length,
                itemBuilder: (context, index) {
                  return CreateGoalCard(
                    color: AppColor.colorList[index],
                    child: Column(
                      children: [
                        Spacer(flex: 2),
                        CreateGoalSubCard(
                          titleController: _goalController,
                          goalAmountController: _goalAmountController,
                          goalBalanceController: _goalBalanceController,
                          height: size.height * 0.65,
                          bgColor: AppColor.colorList[index],
                        ),
                        Spacer(),
                        // _SwipeText(
                        //   color: AppColor.colorList[index],
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
