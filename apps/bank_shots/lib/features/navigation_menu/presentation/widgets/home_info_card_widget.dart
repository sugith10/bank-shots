import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_padding.dart';
import '../../../../core/const/app_radius.dart';
import 'card_row_widget.dart';

final class HomeInfoCard extends StatelessWidget {
  const HomeInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Color(0xFF4340a7),
        borderRadius: BorderRadius.circular(AppRadius.x20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 10,
            offset: Offset(1, 5),
          ),
        ],
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.sizeOf(context).width - 20,
          minWidth: MediaQuery.sizeOf(context).width - 20,
        ),
        child: Column(
          children: [
            Gap(20),
            Text(
              'Total',
              style: context.bodyLarge?.copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              '\$ 125000',
              style: context.headlineLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(20),
            CardRow(
              title: 'Target',
              amount: 25000,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppPadding.x16,
              ),
              child: Divider(
                color: Colors.white.withOpacity(0.2),
                thickness: 1.5,
                indent: 40,
                endIndent: 40,
              ),
            ),
            CardRow(
              title: 'Remaining',
              amount: 25000,
            ),
            Gap(20),
            TextButton(
              onPressed: () {},
              child: Text(
                'More Details >>',
                style: context.bodySmall?.copyWith(
                  color: AppColor.shadowFont,
                ),
              ),
            ),
            Gap(10),
          ],
        ),
      ),
    );
  }
}
