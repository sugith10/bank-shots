import 'package:core_assets/core_assets.dart.dart';
import 'package:flutter/widgets.dart';

final class HomeBgWidget extends StatelessWidget {
  const HomeBgWidget({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter, // Adjust stop point for notch
          colors: [
            AssetColors.peachOrange,
            AssetColors.peachOrange.withValues(alpha: 0),
          ],
        ),
      ),
      child: child,
    );
  }
}
