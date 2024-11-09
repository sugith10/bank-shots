import 'package:flutter/material.dart';

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
          Gap(20),
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
                Gap(10),
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
          Gap(10),
          Divider(),
          Gap(10),
          FittedBox(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _DashBoardText(
                  title: 'Target',
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: AppPadding.x20),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                        width: 2,
                        height: 20,
                        decoration: BoxDecoration(
                          color: AppColor.swipeLight,
                        )),
                  ),
                ),
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
