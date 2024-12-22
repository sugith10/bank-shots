import 'package:core_design/core_design.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final class SplashLogoWidget extends StatelessWidget {
  const SplashLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppRadius.x20),
        border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
        color: Colors.white.withValues(alpha: 0.03),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          'BANK\nSHOT!',
          textAlign: TextAlign.center,
          style: GoogleFonts.climateCrisis(
            textStyle: context.displayLarge?.copyWith(
              fontWeight: FontWeight.w400,
              letterSpacing: 5,
            ),
          ),
        ),
      ),
    );
  }
}
