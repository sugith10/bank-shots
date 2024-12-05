import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
              title: Text('Item 1'),
              onTap: () {
                context.pop();
              },
            ),
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {},
          ),
          Spacer(),
          Text('Version 1.0.0'),
          Gap(40),
        ],
      ),
    );
  }
}
