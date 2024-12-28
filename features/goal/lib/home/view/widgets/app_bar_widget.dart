import 'package:core_assets/gen/assets.gen.dart';
import 'package:core_assets/gen/colors.gen.dart';
import 'package:core_design/core_design.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

import 'select_account_dialog_widget.dart';

final class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.home),
        child: Row(
          children: [
            GestureDetector(
              onTap: () => Scaffold.of(context).openDrawer(),
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  Assets.png.beautifulIndianGirlWhiteSweater14610552107,
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                AppDialog.show(
                  context: context,
                  child: const SelectAccountDailog(),
                );
              },
              child: Center(
                child: Row(
                  children: [
                    Text('Account B', style: context.titleMedium),
                    const Gap(10),
                    const Icon(
                      AppIcons.arrowDown,
                      size: 25,
                      color: AssetColors.softOrange,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
