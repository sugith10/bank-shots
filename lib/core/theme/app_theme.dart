import 'package:flutter/material.dart';

import '../assets/app_fonts.dart';
import '../color/app_color.dart';
import '../const/app_radius.dart';

final class AppTheme {
  static final ThemeData theme = ThemeData(
    primaryColor: AppColor.fontPrimary,
    scaffoldBackgroundColor: AppColor.scaffold,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.scaffold,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.round),
        ),
      ),
    ),
    fontFamily: AppFonts.outfit,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: AppColor.fontPrimary,
      ),
      displayMedium: TextStyle(
        color: AppColor.fontPrimary,
      ),
      displaySmall: TextStyle(
        color: AppColor.fontPrimary,
      ),
      headlineLarge: TextStyle(
        color: AppColor.fontPrimary,
      ),
      headlineMedium: TextStyle(
        color: AppColor.fontPrimary,
      ),
      headlineSmall: TextStyle(
        color: AppColor.fontPrimary,
      ),
      titleLarge: TextStyle(
        color: AppColor.fontPrimary,
      ),
      titleMedium: TextStyle(
        color: AppColor.fontPrimary,
      ),
      titleSmall: TextStyle(
        color: AppColor.fontPrimary,
      ),
      labelLarge: TextStyle(
        color: AppColor.fontPrimary,
      ),
      labelMedium: TextStyle(
        color: AppColor.fontPrimary,
      ),
      labelSmall: TextStyle(
        color: AppColor.fontPrimary,
      ),
      bodyLarge: TextStyle(
        color: AppColor.fontPrimary,
      ),
      bodyMedium: TextStyle(
        color: AppColor.fontPrimary,
      ),
      bodySmall: TextStyle(
        color: AppColor.fontPrimary,
      ),
    ),
  );
}
