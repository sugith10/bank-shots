import 'package:flutter/material.dart';

import '../assets/app_fonts.dart';
import '../color/app_color.dart';

final class AppTheme {
  static final ThemeData theme = ThemeData(
    primaryColor: AppColor.fontPrimary,
    textTheme: const TextTheme(),
    scaffoldBackgroundColor: AppColor.scaffold,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.scaffold,
    ),
    fontFamily: AppFonts.outfit,
  );
}
