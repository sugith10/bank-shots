import 'package:flutter/widgets.dart';

final class BackgroundWidget extends StatelessWidget {
  final Widget child;
  const BackgroundWidget({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.maxFinite,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.primary,
            AppColor.scaffold,
          ],
        ),
      ),
      child: child,
    );
  }
}
