// import 'package:flutter/material.dart';

// final class HomePopupMenuButton extends StatelessWidget {
//   const HomePopupMenuButton({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return PopupMenuButton<int>(
//       child: const Icon(AppIcon.filter),
//       onSelected: (int value) {
//         switch (value) {
//           case 0:
//             break;
//           case 1:
//             break;
//           case 2:
//             break;
//         }
//       },
//       itemBuilder: (BuildContext context) => List<PopupMenuEntry<int>>.generate(
//         DiaryHomeHelper.popupItemList.length,
//         (int index) {
//           final PopupItemModel item = DiaryHomeHelper.popupItemList[index];
//           return PopupMenuItem<int>(
//             value: index,
//             child: PopupItemWidget(
//               icon: item.icon,
//               title: item.title,
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
