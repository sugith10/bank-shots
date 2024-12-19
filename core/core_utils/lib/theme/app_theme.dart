import 'package:flutter/material.dart';

import '../color/core_color.dart';
import '../radius/app_radius.dart';

abstract final class AppTheme {
  static final ThemeData theme = ThemeData(
    dividerColor: CoreColor.swipeLight,
    dividerTheme: DividerThemeData(
      color: CoreColor.swipeLight,
    ),
    listTileTheme: const ListTileThemeData(
      textColor: CoreColor.fontPrimary,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: CoreColor.fontOpposite,
    ),
    scaffoldBackgroundColor: CoreColor.fontOpposite,
    appBarTheme: const AppBarTheme(
      backgroundColor: CoreColor.scaffold,
    ),
    iconTheme: const IconThemeData(
      color: CoreColor.fontPrimary,
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
      trackBorderColor: WidgetStatePropertyAll(Colors.white),
    ),
    // fontFamily: FontFamily.outfit,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      displayMedium: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      displaySmall: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      headlineLarge: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      headlineMedium: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      headlineSmall: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      titleLarge: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      titleMedium: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      titleSmall: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      labelLarge: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      labelMedium: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      labelSmall: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      bodyLarge: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      bodyMedium: TextStyle(
        color: CoreColor.fontPrimary,
      ),
      bodySmall: TextStyle(
        color: CoreColor.fontPrimary,
      ),
    ),
  );
}
