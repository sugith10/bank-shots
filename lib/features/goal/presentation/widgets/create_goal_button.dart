import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_padding.dart';
import '../../../../core/const/app_radius.dart';

final class CreateGoalButton extends StatelessWidget {
  const CreateGoalButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.white.withOpacity(0.1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppRadius.round),
        ),
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.x20,
          vertical: 5,
        ),
        child: Text(
          'Create Goal',
          style: context.titleLarge?.copyWith(
            color: AppColor.shadowFont,
          ),
        ),
      ),
    );
  }
}
