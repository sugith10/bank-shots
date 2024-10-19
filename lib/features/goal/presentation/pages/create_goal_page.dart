import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../core/color/app_color.dart';

import '../../../../core/const/app_radius.dart';
import '../../../../core/providers/app_provider.dart';
import '../../../../core/util/color_util.dart';
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
              height: size.height * 0.65,
              color: AppColor.createButton,
              delay: 1500,
              child: Column(
                children: [
                  Spacer(),
                  CreateGoalButton(),
                ],
              ),
            ),
            CreateGoalCardConstrainedBox(
              delay: 2000,
              height: size.height * 0.55,
              child: LiquidSwipe.builder(
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
                          height: size.height * 0.35,
                          bgColor: AppColor.colorList[index],
                        ),
                        Spacer(),
                        _SwipeText(
                          color: AppColor.colorList[index],
                        )
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
