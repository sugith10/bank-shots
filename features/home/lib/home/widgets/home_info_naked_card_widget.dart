import 'package:core_assets/gen/colors.gen.dart';
import 'package:core_design/core_design.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class HomeInfoCardWidget extends StatelessWidget {
  const HomeInfoCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.home),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppRadius.x20),
          color: AssetColors.darkGrey2,
        ),
        child: Padding(
          padding: const EdgeInsets.all(AppPadding.x16),
          child: Column(
            children: [
              const Gap(20),
              const _AmountWidget(
                title: 'Target',
                amount: '10,000',
              ),
              const _Divider(),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TweenAnimationBuilder<double>(
                      tween: Tween(begin: 0, end: 50),
                      duration: const Duration(milliseconds: 1500),
                      curve: Curves.easeInOut,
                      builder: (context, value, _) {
                        return CircularPercentageIndicator(
                          size: 96,
                          percentage: value,
                          color: AssetColors.peachOrange,
                          backgroundColor: AssetColors.darkGrey1,
                        );
                      },
                    ),
                    const Gap(20),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _AmountWidget(
                          title: 'Saved',
                          amount: '1,000',
                          smallText: true,
                        ),
                        Gap(10),
                        _AmountWidget(
                          title: 'Pending',
                          amount: '40,000',
                          smallText: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final class _Divider extends StatelessWidget {
  const _Divider();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.x10),
      child: Divider(
        color: Colors.white.withValues(alpha: 0.2),
      ),
    );
  }
}

final class _AmountWidget extends StatelessWidget {
  const _AmountWidget({
    required this.title,
    required this.amount,
    this.smallText = false,
  });

  final String title;
  final String amount;
  final bool smallText;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '₹$amount',
            style: GoogleFonts.beVietnamPro(
              textStyle: smallText
                  ? context.headlineMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    )
                  : context.displayMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
            ),
          ),
          const Gap(10),
          Text(
            title,
            style: GoogleFonts.beVietnamPro(
              textStyle: smallText
                  ? context.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withValues(alpha: 0.98),
                    )
                  : context.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}

// final class _DashBoardText extends StatelessWidget {
//   const _DashBoardText({
//     required this.title,
//   });
//   final String title;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: GoogleFonts.beVietnamPro(
//             textStyle: context.titleLarge?.copyWith(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//         const Gap(10),
//         Text(
//           '₹5,58k',
//           style: GoogleFonts.beVietnamPro(
//             textStyle: context.displayMedium?.copyWith(
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
