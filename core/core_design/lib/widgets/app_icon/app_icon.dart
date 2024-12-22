import 'package:core_assets/core_assets.dart.dart';
import 'package:flutter/material.dart';

import '../../radius/app_radius.dart';

final class AppIconButton extends StatelessWidget {
  const AppIconButton({
    required this.icon,
    required this.callback,
    super.key,
  });
  final IconData icon;
  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      borderRadius: BorderRadius.circular(AppRadius.button),
      splashColor: AssetColors.coralOrange.withValues(alpha: 0.2),
      highlightColor: AssetColors.coralOrange.withValues(alpha: 0.1),
      child: Ink(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          color: AssetColors.darkGrey2,
          borderRadius: BorderRadius.circular(AppRadius.button),
        ),
        child: Icon(
          icon,
          color: AssetColors.coralOrange,
        ),
      ),
    );
  }
}
