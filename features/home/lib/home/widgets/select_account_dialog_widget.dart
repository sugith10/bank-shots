import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:core_utils/core_utils.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

final class SelectAccountDailogWidget extends StatelessWidget {
  const SelectAccountDailogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Container(
      width: size.width - 40,
      decoration: BoxDecoration(
        color: AppColor.card,
        borderRadius: BorderRadius.circular(AppRadius.x20),
      ),
      padding: const EdgeInsets.all(AppPadding.x20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Select an account',
            style: context.titleLarge,
          ),
          Gap(20),
          ClipRRect(
            borderRadius: BorderRadius.circular(AppRadius.round),
            child: Material(
              color: AppColor.card,
              child: ListTile(
                style: ListTileStyle.list,
                leading: const CircleAvatar(),
                title: Text(
                  'Account A',
                  style: context.titleMedium,
                ),
                onTap: () {
                  //Navigator.pop(context);
                },
                trailing: IconButton.filled(
                  onPressed: () {},
                  icon: Icon(
                    AppIcons.edit,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white.withOpacity(0.08),
                  ),
                ),
              ),
            ),
          ),
          Gap(50),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Add Account'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
