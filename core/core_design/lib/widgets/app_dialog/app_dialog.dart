import 'package:core_assets/core_assets.dart.dart';
import 'package:flutter/material.dart';

import '../../padding/app_padding.dart';
import '../../radius/app_radius.dart';

abstract final class AppDialog {
  static void show({
    required BuildContext context,
    required Widget child,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        final size = MediaQuery.sizeOf(context);
        return Dialog(
          child: Container(
            width: size.width - 40,
            decoration: BoxDecoration(
              color: AssetColors.darkCharcoal,
              borderRadius: BorderRadius.circular(AppRadius.x20),
            ),
            padding: const EdgeInsets.all(AppPadding.x20),
            child: child,
          ),
        );
      },
    );
  }
}
