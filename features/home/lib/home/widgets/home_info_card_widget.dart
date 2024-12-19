import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:core_utils/core_utils.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';

import 'card_row_widget.dart';

final class HomeInfoCard extends StatelessWidget {
  const HomeInfoCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: const Color(0xFF4340a7),
        borderRadius: BorderRadius.circular(AppRadius.x20),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(1, 5),
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
            const Gap(20),
            Text(
              'Total',
              style: context.bodyLarge?.copyWith(
                color: Colors.white,
              ),
            ),
            Text(
              r'$ 125000',
              style: context.headlineLarge?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(20),
            const CardRow(
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
            const CardRow(
              title: 'Remaining',
              amount: 25000,
            ),
            const Gap(20),
            TextButton(
              onPressed: () {},
              child: Text(
                'More Details >>',
                style: context.bodySmall?.copyWith(
                  color: CoreColor.shadowFont,
                ),
              ),
            ),
            const Gap(10),
          ],
        ),
      ),
    );
  }
}
