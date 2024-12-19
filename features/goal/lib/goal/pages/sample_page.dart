// import 'package:flutter/material.dart';

// class SamplePage extends StatefulWidget {
//   const SamplePage({super.key});

//   @override
//   State<SamplePage> createState() => _SamplePageState();
// }

// class _SamplePageState extends State<SamplePage> {
//   bool show = false;
//   double dynamicHeight = 0.0;
//   final GlobalKey _dynamicWidgetKey = GlobalKey();

//   void _toggleShow() {
//     setState(() {
//       show = !show;
//     });

//     // Wait for the next frame to get the height of the dynamic widget
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       if (_dynamicWidgetKey.currentContext != null) {
//         final RenderBox renderBox =
//             _dynamicWidgetKey.currentContext!.findRenderObject() as RenderBox;
//         setState(() {
//           dynamicHeight = renderBox.size.height;
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SizedBox(
//         height: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   SizedBox(
//                     height: show
//                         ? dynamicHeight
//                         : 0, // Adjust the height based on the dynamic height
//                   ),
//                   Container(
//                     color: const Color.fromARGB(69, 255, 235, 59),
//                     width: 300,
//                     child: GestureDetector(
//                       onTap: _toggleShow,
//                       child: Container(
//                         height: 50,
//                         width: 200,
//                         color: Colors.red,
//                       ),
//                     ),
//                   ),
//                   if (show)
//                     Positioned(
//                       top: 30,
//                       left: 50,
//                       child: Material(
//                         color: Colors.transparent,
//                         child: Container(
//                           key: _dynamicWidgetKey,
//                           width: 200,
//                           color: const Color.fromARGB(255, 113, 160, 199),
//                           child: Column(
//                             children: [
//                               InkWell(
//                                 onTap: () {
//                                   print('hello world');
//                                 },
//                                 child: Ink(
//                                   height: 50,
//                                   color: Colors.green,
//                                 ),
//                               ),
//                               InkWell(
//                                 onTap: () {
//                                   print('hello world');
//                                 },
//                                 child: Ink(
//                                   height: 50,
//                                   color: Colors.blue,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                 ],
//               ),
//               Container(
//                 height: 100,
//                 width: 200,
//                 color: Colors.yellow,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
