import 'package:core_utils/core_utils.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';

final class CardRow extends StatelessWidget {
  const CardRow({
    required this.title,
    required this.amount,
    super.key,
  });
  final String title;
  final double amount;

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
          const Gap(10),
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
