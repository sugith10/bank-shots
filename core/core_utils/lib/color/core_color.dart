import 'package:flutter/material.dart';

abstract final class CoreColor {
  static const scaffold = Color(0xFF1a1a1a);
  static const fontPrimary = Colors.white;
  static const fontSecondary = Colors.grey;
  static const fontOpposite = Colors.black;
  static const primary = Color(0xFF9AEF5A);
  static const complementary = Color.fromARGB(255, 255, 255, 255);
  static const divider = Color.fromRGBO(255, 255, 255, 0.824);
  static const tertiary = Color.fromRGBO(229, 229, 229, 1);
  static const card = Color.fromARGB(255, 27, 27, 27);
  static const fab = Color.fromARGB(255, 40, 40, 40);
  static const secondary = Color(0xFF6050CF);
  static final shadowFont = Colors.white.withValues(alpha: .6);
  static final shadowFontDark = Colors.black.withValues(alpha: .6);
  static const error = Colors.redAccent;

  static const gradientPrimary = Color.fromRGBO(78, 78, 78, 1);
  static const gradientSecondary = Color.fromRGBO(0, 0, 0, 1);
  static const boxShadow = Color.fromARGB(66, 255, 255, 255);

  static final swipeDark = Colors.black.withValues(alpha: .7);
  static final swipeLight = Colors.white.withValues(alpha: .7);

  // Card colors
  static const card1 = Color(0xFFD1FD08);
  static const card2 = Color(0xFF49cbeb);
  static const card3 = Color(0xFFf4f5f6);
  static const card4 = Color(0xFF1c2d27);
  static const card5 = Color(0xFF299272);
  static const card6 = Color(0xFFf7d786);
  static const card7 = Color.fromARGB(255, 243, 187, 255);
  static const card8 = Color(0xFF909090);
  static const card9 = Color(0xFF9cacff);
  static const card10 = Color(0xFFffcc90);
  static const card11 = Color(0xFF80d8b8);
  static const card12 = Color(0xFFf894c4);
  static const card13 = Color.fromARGB(255, 255, 179, 16);
  static const card14 = Color(0xFF97E0F7);

  static const List<Color> colorList = [
    card1,
    card2,
    card3,
    card4,
    card5,
    card6,
    card7,
    card8,
    primary,
    card9,
    card10,
    card11,
    card12,
    card13,
    card14,
  ];
}
