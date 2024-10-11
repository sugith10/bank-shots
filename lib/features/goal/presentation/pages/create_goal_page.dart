import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import '../../../../core/color/app_color.dart';

import '../../../../core/const/app_padding.dart';
import '../../../../core/const/app_radius.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/util/color.util.dart';
import '../../../../core/widgets/glass_card_widget.dart';
import '../widgets/create_goal_button.dart';
import '../widgets/create_goal_bg_card.dart';
import '../widgets/create_goal_card.dart';
import '../widgets/create_goal_card_constrained_box.dart';

part '../widgets/create_goal_sub_card.dart';
part '../widgets/swipe_text.dart';

final class CreateGoalPage extends StatefulWidget {
  const CreateGoalPage({super.key});

  @override
  State<CreateGoalPage> createState() => _CreateGoalPageState();
}

class _CreateGoalPageState extends State<CreateGoalPage> {
  final TextEditingController _goalController = TextEditingController();

  @override
  void dispose() {
    _goalController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Stack(
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
                      _CreateGoalSubCard(
                        controller: _goalController,
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
    );
  }
}
