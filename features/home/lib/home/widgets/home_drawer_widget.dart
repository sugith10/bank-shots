import 'package:core_navigation/navigation.dart';
import 'package:core_utils/core_utils.dart';
import 'package:core_widgets/core_widgets.dart';
import 'package:flutter/material.dart';

final class HomeDrawer extends StatelessWidget {
  const HomeDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const DrawerHeader(
            child: Text('Drawer Header'),
          ),
          Material(
            color: Colors.transparent,
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(AppRadius.x10),
              ),
              splashColor: Colors.white.withOpacity(0.1),
              title: const Text('Item 1'),
              onTap: () => GoRouterHelper(context).pop(),
            ),
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {},
          ),
          const Spacer(),
          const Text('Version 1.0.0'),
          const Gap(40),
        ],
      ),
    );
  }
}
