import 'package:core_design/core_design.dart';
import 'package:flutter/material.dart';

final class ViewCustomizeButton extends StatelessWidget {
  const ViewCustomizeButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: AppPadding.home),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(AppIcons.category),
        ),
      ),
    );
  }
}
