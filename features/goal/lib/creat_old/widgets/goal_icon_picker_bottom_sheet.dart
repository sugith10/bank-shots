import 'package:core_assets/gen/assets.gen.dart';
import 'package:core_design/core_design.dart';
import 'package:core_navigation/core_navigation.dart';
import 'package:core_provider/core_provider.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../goal_provider.dart';

final class GoalIconPickerBottomSheet {
  final List<String> _goalIcons = [
    Assets.svg.aircraft,
    Assets.svg.apple,
    Assets.svg.bag,
    Assets.svg.beach,
    Assets.svg.binocular,
    Assets.svg.campfire,
    Assets.svg.clock,
    Assets.svg.comapss,
    Assets.svg.faceSavoringFood,
    Assets.svg.family,
    Assets.svg.fuji,
    Assets.svg.girl,
    Assets.svg.hotMoney,
    Assets.svg.lighthouse,
    Assets.svg.loveFace,
    Assets.svg.moneyMouth,
    Assets.svg.phone,
    Assets.svg.piggyBank,
    Assets.svg.pyramid,
    Assets.svg.shoe,
    Assets.svg.sneezing,
    Assets.svg.sunglass,
    Assets.svg.towerOfPissa,
    Assets.svg.tree,
    Assets.svg.trunks,
    Assets.svg.watch,
    Assets.svg.yatch,
  ];

  void getIconSheet(BuildContext context, WidgetRef ref) {
    showModalBottomSheet(
      context: context,
      backgroundColor: CoreColor.card,
      builder: (BuildContext context) {
        return SizedBox(
          height: context.height * 0.6,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(AppPadding.x12),
                child: Divider(
                  color: CoreColor.shadowFont,
                  thickness: 3.5,
                  indent: context.width * 0.35,
                  endIndent: context.width * 0.35,
                ),
              ),
              const Gap(20),
              Expanded(
                child: Scrollbar(
                  thumbVisibility: true,
                  child: SingleChildScrollView(
                    child: Wrap(
                      children: List.generate(_goalIcons.length, (index) {
                        return Padding(
                          padding: const EdgeInsets.all(AppPadding.x12),
                          child: IconButton(
                            onPressed: () {
                              ref
                                  .read(GoalProvider.goal.notifier)
                                  .onUpdateGoalIcon(icon: _goalIcons[index]);
                              GoRouterHelper(context).pop();
                            },
                            icon: SvgPicture.asset(
                              height: 50,
                              width: 50,
                              _goalIcons[index],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
              const Gap(40),
            ],
          ),
        );
      },
    );
  }
}
