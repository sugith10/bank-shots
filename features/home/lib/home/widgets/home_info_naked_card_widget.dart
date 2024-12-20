import 'package:core_utils/core_utils.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class HomeInfoNakedCardWidget extends StatelessWidget {
  const HomeInfoNakedCardWidget({
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
          const Gap(20),
          FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '₹10,7k',
                  style: GoogleFonts.spaceGrotesk(
                    textStyle: context.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Gap(10),
                Text(
                  '₹Total',
                  style: GoogleFonts.spaceGrotesk(
                    textStyle: context.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(10),
          const Divider(),
          const Gap(10),
          FittedBox(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const _DashBoardText(
                  title: 'Target',
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.x20),
                  child: Align(
                    child: Container(
                      width: 2,
                      height: 20,
                      decoration: BoxDecoration(
                        color: CoreColor.swipeLight,
                      ),
                    ),
                  ),
                ),
                const _DashBoardText(
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
  const _DashBoardText({
    required this.title,
  });
  final String title;

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
        const Gap(10),
        Text(
          '₹5,58k',
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
