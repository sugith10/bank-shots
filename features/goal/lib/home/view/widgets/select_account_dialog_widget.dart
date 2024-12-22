import 'package:core_assets/gen/colors.gen.dart';
import 'package:core_design/core_design.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';

final class SelectAccountDailog extends StatelessWidget {
  const SelectAccountDailog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Select an account',
          style: context.titleLarge?.copyWith(
            fontWeight: FontWeight.w500,
            letterSpacing: 0.8,
          ),
        ),
        const Gap(20),
        ClipRRect(
          borderRadius: BorderRadius.circular(AppRadius.round),
          child: Material(
            color: CoreColor.card,
            child: ListTile(
              style: ListTileStyle.list,
              leading: const CircleAvatar(),
              title: Text(
                'Account A',
                style: context.titleMedium,
              ),
              onTap: () {
                //Navigator.pop(context);
              },
              trailing: IconButton.filled(
                onPressed: () {},
                icon: Icon(
                  AppIcons.edit,
                  color: Theme.of(context).iconTheme.color,
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AssetColors.darkGrey2,
                ),
              ),
            ),
          ),
        ),
        const Gap(50),
        Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AssetColors.darkGrey1,
                ),
                child: SizedBox(
                  height: 45,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Add Account  ',
                            style: context.titleMedium?.copyWith(
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextSpan(
                            text: '+',
                            style: context.titleMedium?.copyWith(
                              color: AssetColors.coralOrange,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
