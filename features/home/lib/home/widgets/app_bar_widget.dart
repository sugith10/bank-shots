import 'package:core_assets/gen/assets.gen.dart';
import 'package:core_utils/core_utils.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';

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
              Assets.png.beautifulIndianGirlWhiteSweater14610552107,
            ),
          ),
        ),
        const Spacer(),
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return const Dialog(child: SelectAccountDailogWidget());
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
                      const Gap(5),
                      const Icon(AppIcons.arrowDown),
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
