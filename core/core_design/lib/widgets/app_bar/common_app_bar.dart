import 'package:flutter/widgets.dart';

import '../../icons/app_icons.dart';
import '../app_icon/app_icon.dart';

final class CommonAppBar extends StatelessWidget {
  const CommonAppBar({
    required this.callback,
    super.key,
  });

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: AppIconButton(
        icon: AppIcons.arrowDown,
        callback: callback,
      ),
    );
  }
}
