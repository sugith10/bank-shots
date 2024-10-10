import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/const/app_padding.dart';
import '../../../../core/gen/assets.gen.dart';
import '../../../../core/widgets/glass_card_widget.dart';
import 'selecte_account_dialog_widget.dart';

final class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage:
              AssetImage(Assets.png.beautifulIndianGirlWhiteSweater14610552107),
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
        // DecoratedBox(
        //   decoration: BoxDecoration(
        //     color: Colors.white.withOpacity(0.2),
        //     borderRadius: BorderRadius.circular(AppRadius.round),
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: AppPadding.x16),
        //     child: DropdownButton<String>(
        //       value: _selectedOption,
        //       hint: Text('Select an option'),
        //       items: _options.map((String option) {
        //         return DropdownMenuItem<String>(
        //           value: option,
        //           child: Text(option),
        //         );
        //       }).toList(),
        //       onChanged: (String? newValue) {
        //         setState(() {
        //           _selectedOption = newValue;
        //         });
        //       },
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
