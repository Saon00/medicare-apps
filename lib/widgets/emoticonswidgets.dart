// import 'package:flutter/material.dart';

// class EmoticonsWidgets extends StatelessWidget {
//   const EmoticonsWidgets({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         scrollDirection: Axis.horizontal,
//         child: Row(
//           children: [
//             designCard('🤒', 'temperature'),
//             const SizedBox(
//               width: 20,
//             ),
//             designCard('🤧', 'snuffle'),
//             const SizedBox(
//               width: 20,
//             ),
//             designCard('🤕', 'headache'),
//             const SizedBox(
//               width: 20,
//             ),
//             designCard('😷', 'flu'),
//             const SizedBox(
//               width: 20,
//             ),
//           ],
//         ));
//   }

//   Widget designCard(String icon, String sympotmsName) => Container(
//         child: ElevatedButton(
//           // color: Colors.white70,
//           // shape: RoundedRectangleBorder(
//           //   borderRadius: BorderRadius.circular(15),
//           // ),
//           onPressed: () {},
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Row(
//               children: [
//                 Text(
//                   icon,
//                   style: TextStyle(fontSize: 20),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   sympotmsName,
//                   style: TextStyle(fontSize: 20, color: Colors.black87),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       );
// }
