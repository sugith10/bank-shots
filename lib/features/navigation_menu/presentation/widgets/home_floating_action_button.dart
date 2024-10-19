import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/route/app_route.dart';

final class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      icon: Icon(
        IconlyBroken.graph,
        color: Colors.white,
      ),
      onPressed: () {
        //context.push(SamplePage());
        CreateGoalRoute().push(context);
      },
      backgroundColor: AppColor.fab,
      label: Text(
        'Add Shot',
        style: context.bodyLarge,
      ),
    );
  }
}
