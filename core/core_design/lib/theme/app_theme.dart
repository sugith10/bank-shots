import 'package:core_assets/gen/colors.gen.dart';
import 'package:flutter/material.dart';

import '../radius/app_radius.dart';

abstract final class AppTheme {
  static final ThemeData theme = ThemeData(
    scaffoldBackgroundColor: AssetColors.primary,
    dividerColor: AssetColors.white70,
    dividerTheme: const DividerThemeData(
      color: AssetColors.white70,
    ),
    listTileTheme: const ListTileThemeData(
      textColor: Colors.white,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: AssetColors.darkCharcoal,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AssetColors.darkGrey3,
    ),
    iconTheme: const IconThemeData(
      color: AssetColors.coralOrange,
    ),
    inputDecorationTheme: const InputDecorationTheme(),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AssetColors.darkGrey2,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.x12),
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
    popupMenuTheme: PopupMenuThemeData(
      color: AssetColors.darkCharcoal,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppRadius.x12),
      ),
    ),
    // fontFamily: FontFamily.outfit,
    textTheme: const TextTheme(
      displayLarge: TextStyle(color: Colors.white),
      displayMedium: TextStyle(color: Colors.white),
      displaySmall: TextStyle(color: Colors.white),
      headlineLarge: TextStyle(color: Colors.white),
      headlineMedium: TextStyle(color: Colors.white),
      headlineSmall: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      titleSmall: TextStyle(color: Colors.white),
      labelLarge: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Colors.white),
      labelSmall: TextStyle(color: Colors.white),
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      bodySmall: TextStyle(color: Colors.white),
    ),
  );
}
