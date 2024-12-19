import 'package:core_utils/core_utils.dart';
import 'package:flutter/widgets.dart';

final class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({
    required this.child,
    super.key,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            CoreColor.primary,
            CoreColor.scaffold,
          ],
        ),
      ),
      child: child,
    );
  }
}
