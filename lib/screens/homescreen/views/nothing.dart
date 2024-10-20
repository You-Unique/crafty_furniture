// import 'package:craftyfurniture/screens/shared_utils/extension.dart';
// import 'package:craftyfurniture/screens/shared_utils/primary_colour.dart';
// import 'package:flutter/material.dart';
// import 'package:ski_sub/shared/ski_colors.dart';
// import 'package:ski_sub/utils/extensions.dart';
// import 'package:ski_sub/models/image.dart' as vehicle;

// class CarImageSection extends StatefulWidget {
//   final List<vehicle.Image> carImages;
//   final String tag;
//   const CarImageSection({
//     super.key,
//     required this.carImages,
//     required this.tag,
//   });

//   @override
//   State<CarImageSection> createState() => _CarImageSectionState();
// }

// class _CarImageSectionState extends State<CarImageSection> {
//   int currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         SizedBox(
//           height: 250,
//           child: Hero(
//             tag: widget.tag,
//             child: PageView(
//               onPageChanged: (value) => setState(
//                 () {
//                   currentIndex = value;
//                 },
//               ),
//               children: List.generate(
//                 widget.carImages.length,
//                 (index) => Image.network(
//                   widget.carImages[index].image!,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//         ),
//         5.vSpace,
//         Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: List.generate(
//             widget.carImages.length,
//             (index) => Container(
//               height: 7,
//               width: 7,
//               margin: const EdgeInsets.symmetric(horizontal: 5),
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: currentIndex == index
//                     ? CraftsColor.primaryColor
//                     : Colors.black,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }