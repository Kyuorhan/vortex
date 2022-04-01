// import 'package:flutter/material.dart';
// // import 'package:line_icons/line_icons.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:vortex/src/modules/util/home_page_json.dart';

// class CarrouselWidget extends StatelessWidget {
//   const CarrouselWidget({Key? key, required Null Function() onTap})
//       : super(key: key);

//   @override
//   Widget getBody(size) {
//     return ListView(
//       children: [
//         CarouselSlider(
//           options: CarouselOptions(
//             enlargeCenterPage: true,
//             aspectRatio: 1.5,
//             viewportFraction: 0.95,
//             autoPlay: false,
//           ),
//           items: List.generate(sliders.length, (index) {
//             return Container(
//               margin: EdgeInsets.symmetric(horizontal: 8),
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     image: DecorationImage(
//                         image: NetworkImage(sliders[index]),
//                         fit: BoxFit.cover)),
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(5),
//                       color: Colors.black.withOpacity(0.3)),
//                 ),
//               ),
//             );
//           }),
//         ),
//       ],
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
