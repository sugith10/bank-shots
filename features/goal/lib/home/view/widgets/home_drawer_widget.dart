import 'package:core_design/core_design.dart';
import 'package:core_navigation/core_navigation.dart';
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
              splashColor: Colors.white.withValues(alpha: .1),
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
