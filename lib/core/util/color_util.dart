import 'package:flutter/material.dart';

import '../color/app_color.dart';

@immutable
final class ColorUtil {
  const ColorUtil._();
  static Color get({
    required Color backgroundColor,
    required Color dark,
    required Color light,
  }) {
    final luminance = backgroundColor.computeLuminance();

    return luminance > 0.5 ? dark : light;
  }

  static Color glassCardBgFromColorList(Color color) {
    if (color == AppColor.card1 ||
        color == AppColor.card2 ||
        color == AppColor.card6 ||
        color == AppColor.card7 ||
        color == AppColor.card10 ||
        color == AppColor.card11 ||
        color == AppColor.card13 ||
        color == AppColor.card14 ||
        color == AppColor.primary) {
      return Colors.white;
    } else if (color == AppColor.card3) {
      return const Color.fromARGB(255, 215, 199, 198);
    } else if (color == AppColor.card4) {
      return const Color.fromARGB(255, 55, 91, 79);
    } else if (color == AppColor.card5) {
      return const Color.fromARGB(255, 64, 220, 173);
    } else if (color == AppColor.card8) {
      return const Color.fromARGB(255, 195, 195, 195);
    } else if (color == AppColor.card9) {
      return const Color.fromARGB(255, 199, 208, 253);
    } else if (color == AppColor.card12) {
      return const Color.fromARGB(255, 252, 184, 217);
    } else {
      return Colors.black;
    }
  }
}
