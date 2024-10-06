import 'package:flutter/material.dart';

import '../../../../core/const/app_padding.dart';
import '../../../../core/const/app_radius.dart';

final class AppBarWidget extends StatefulWidget {
  const AppBarWidget({
    super.key,
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  String? _selectedOption;
  final List<String> _options = ['Option 1', 'Option 2', 'Option 3'];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(),
        Spacer(),
        DecoratedBox(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(AppRadius.round),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.x16),
            child: DropdownButton<String>(
              value: _selectedOption,
              hint: Text('Select an option'),
              items: _options.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedOption = newValue;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
