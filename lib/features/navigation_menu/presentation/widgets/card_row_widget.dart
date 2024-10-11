import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/const/app_padding.dart';
import '../../../../core/formatter/amount_formatter.dart';

final class CardRow extends StatelessWidget {
  final String title;
  final double amount;
  const CardRow({
    required this.title,
    required this.amount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.x40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: context.titleLarge?.copyWith(
              color: Colors.white,
            ),
          ),
          Gap(10),
          Text(
            AmountFormatter.addCountry(amount),
            style: context.titleLarge?.copyWith(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
