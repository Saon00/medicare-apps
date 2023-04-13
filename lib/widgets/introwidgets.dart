// import 'package:flutter/material.dart';

// class IntroWidgets extends StatelessWidget {
//   final icon;
//   final String title;
//   final String subtitle;

//   const IntroWidgets(
//       {Key? key,
//       required this.icon,
//       required this.title,
//       required this.subtitle})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 180,
//       width: 200,
//       child: Card(
//         // color: Colors.lime,
//         elevation: 5,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(20),
//         ),
//         // color: Colors.deepPurple,
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Icon(
//               //   icon,
//               //   size: 50,
//               // ),
//               CircleAvatar(
//                 child: Icon(icon, size: 35,color: Colors.white,),
//                 backgroundColor: Colors.deepPurpleAccent,
//               ),
//               Container(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       title,
//                       style: TextStyle(fontSize: 25),
//                     ),
//                     Text(
//                       subtitle,
//                       style: TextStyle(fontSize: 15, color: Colors.black38),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
