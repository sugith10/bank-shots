import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/const/app_padding.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/widgets/glass_card_widget.dart';
import 'select_account_dialog_widget.dart';

final class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

final class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            Scaffold.of(context).openDrawer();
          },
          child: CircleAvatar(
            backgroundImage: AssetImage(
                Assets.png.beautifulIndianGirlWhiteSweater14610552107),
          ),
        ),
        Spacer(),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(child: SelectAccountDailogWidget());
              },
            );
          },
          child: GlassCardWidget(
            color: const Color.fromARGB(255, 60, 59, 59),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.x16),
              child: SizedBox(
                height: 40,
                child: Center(
                  child: Row(
                    children: [
                      Text('Account B', style: context.titleMedium),
                      Gap(5),
                      Icon(IconlyBroken.arrow_down_2),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
