import 'package:flutter/material.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_radius.dart';

final class GoalTextField extends StatelessWidget {
  const GoalTextField({
    required this.controller,
    this.onChanged,
    super.key,
  });

  final TextEditingController controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(AppRadius.x10),
        borderSide: BorderSide(color: Colors.transparent));
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,
        fillColor: Colors.white.withOpacity(0.6),
        filled: true,
      ),
      style: TextStyle(
        color: AppColor.fontOpposite,
      ),
      onChanged: onChanged,
    );
  }
}
