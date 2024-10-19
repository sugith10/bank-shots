import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../core/const/app_padding.dart';

final class HomeInfoNakedCard extends StatelessWidget {
  const HomeInfoNakedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.home),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Financial Goal\nDashboard',
            style: GoogleFonts.spaceGrotesk(
              textStyle: context.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Gap(20),
          FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$10,7k',
                  style: GoogleFonts.spaceGrotesk(
                    textStyle: context.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Gap(10),
                Text(
                  'Total',
                  style: GoogleFonts.spaceGrotesk(
                    textStyle: context.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(10),
          Divider(),
          Gap(10),
          FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _DashBoardText(
                  title: 'Target',
                ),
                Gap(10),
                _DashBoardText(
                  title: 'Remaining',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

final class _DashBoardText extends StatelessWidget {
  final String title;
  const _DashBoardText({
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.spaceGrotesk(
            textStyle: context.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Gap(10),
        Text(
          '\$100000',
          style: GoogleFonts.spaceGrotesk(
            textStyle: context.displayMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
