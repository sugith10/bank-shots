import 'package:flutter/material.dart';

import '../../../../../apps/bank_shots/lib/core/color/app_color.dart';
import '../../../../../apps/bank_shots/lib/core/const/app_radius.dart';

final class GoalTextField extends StatelessWidget {
  const GoalTextField({
    required this.controller,
    this.borderColor,
    this.onChanged,
    this.minWidth = 150,
    super.key,
  });

  final TextEditingController controller;
  final Color? borderColor;
  final Function(String)? onChanged;
  final double minWidth;

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppRadius.x10),
      borderSide: BorderSide(
        color: borderColor ?? Colors.transparent,
      ),
    );
    return IntrinsicWidth(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: minWidth,
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            focusedBorder: inputBorder,
            enabledBorder: inputBorder,
            fillColor: Colors.white.withOpacity(0.6),
            filled: true,
          ),
          style: TextStyle(
            fontSize: 25,
            color: AppColor.fontOpposite,
          ),
          onChanged: onChanged,
        ),
      ),
    );
  }
}
