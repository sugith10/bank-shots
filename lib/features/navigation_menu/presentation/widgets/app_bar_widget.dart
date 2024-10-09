import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/color/app_color.dart';
import '../../../../core/const/app_padding.dart';
import '../../../../core/const/app_radius.dart';
import '../../../../core/widgets/glass_card_widget.dart';

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
        GestureDetector(
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                final size = MediaQuery.sizeOf(context);
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: size.width - 40,
                      decoration: BoxDecoration(
                        color: AppColor.card,
                        borderRadius: BorderRadius.circular(AppRadius.x20),
                      ),
                      padding: const EdgeInsets.all(AppPadding.x20),
                      child: Column(
                        children: [
                          Text(
                            'Select an account',
                            style: context.titleLarge,
                          ),
                          SizedBox(height: 20),
                          Material(
                            color: AppColor.card,
                            child: ListTile(
                              style: ListTileStyle.list,
                              leading: CircleAvatar(),
                              title: Text(
                                'Account A',
                                style: context.titleMedium,
                              ),
                              onTap: () {
                                //Navigator.pop(context);
                              },
                              trailing: Icon(
                                IconlyLight.edit,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(height: 50),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Add Account'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
          },
          child: GlassCardWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.x16),
              child: SizedBox(
                height: 40,
                child: Center(
                  child: Text('Account B ▼', style: context.titleMedium),
                ),
              ),
            ),
          ),
        ),
        // DecoratedBox(
        //   decoration: BoxDecoration(
        //     color: Colors.white.withOpacity(0.2),
        //     borderRadius: BorderRadius.circular(AppRadius.round),
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.symmetric(horizontal: AppPadding.x16),
        //     child: DropdownButton<String>(
        //       value: _selectedOption,
        //       hint: Text('Select an option'),
        //       items: _options.map((String option) {
        //         return DropdownMenuItem<String>(
        //           value: option,
        //           child: Text(option),
        //         );
        //       }).toList(),
        //       onChanged: (String? newValue) {
        //         setState(() {
        //           _selectedOption = newValue;
        //         });
        //       },
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
