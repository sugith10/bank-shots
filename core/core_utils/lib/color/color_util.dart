import 'package:flutter/material.dart';

import 'core_color.dart';

@immutable
abstract final class ColorUtil {
  static Color get({
    required Color backgroundColor,
    required Color dark,
    required Color light,
  }) {
    final luminance = backgroundColor.computeLuminance();

    return luminance > 0.5 ? dark : light;
  }

  static Color glassCardBgFromColorList(Color color) {
    if (color == CoreColor.card1 ||
        color == CoreColor.card2 ||
        color == CoreColor.card6 ||
        color == CoreColor.card7 ||
        color == CoreColor.card10 ||
        color == CoreColor.card11 ||
        color == CoreColor.card13 ||
        color == CoreColor.card14 ||
        color == CoreColor.primary) {
      return Colors.white;
    } else if (color == CoreColor.card3) {
      return const Color.fromARGB(255, 215, 199, 198);
    } else if (color == CoreColor.card4) {
      return const Color.fromARGB(255, 55, 91, 79);
    } else if (color == CoreColor.card5) {
      return const Color.fromARGB(255, 64, 220, 173);
    } else if (color == CoreColor.card8) {
      return const Color.fromARGB(255, 195, 195, 195);
    } else if (color == CoreColor.card9) {
      return const Color.fromARGB(255, 199, 208, 253);
    } else if (color == CoreColor.card12) {
      return const Color.fromARGB(255, 252, 184, 217);
    } else {
      return Colors.black;
    }
  }
}
