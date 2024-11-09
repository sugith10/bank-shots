import 'package:flutter/material.dart';

import '../color/app_color.dart';
import '../radius/app_radius.dart';

final class AppTheme {
  static final ThemeData theme = ThemeData(
    dividerColor: AppColor.swipeLight,
    dividerTheme: DividerThemeData(
      color: AppColor.swipeLight,
    ),
    listTileTheme: const ListTileThemeData(
      textColor: AppColor.fontPrimary,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AppColor.fontOpposite,
    ),
    scaffoldBackgroundColor: AppColor.fontOpposite,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.scaffold,
    ),
    iconTheme: const IconThemeData(
      color: AppColor.fontPrimary,
    ),
    inputDecorationTheme: const InputDecorationTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.round),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        overlayColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.round),
        ),
      ),
    ),
    scrollbarTheme: const ScrollbarThemeData(
        thumbColor: WidgetStatePropertyAll(Colors.white),
        thumbVisibility: WidgetStatePropertyAll(true),
        trackColor: WidgetStatePropertyAll(Colors.white),
        trackVisibility: WidgetStatePropertyAll(true),
        trackBorderColor: WidgetStatePropertyAll(Colors.white)),
    // fontFamily: FontFamily.outfit,
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
