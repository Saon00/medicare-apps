// import 'package:flutter/material.dart';

// class PopularDoctorWidgets extends StatelessWidget {
//   const PopularDoctorWidgets({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       scrollDirection: Axis.vertical,
//       physics: NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       crossAxisCount: 2,
//       children: [
//         popularDoctorCard(
//             'https://img.icons8.com/external-victoruler-linear-colour-victoruler/344/external-doctor-medical-staff-characters-victoruler-linear-colour-victoruler-5.png',
//             'Dr. Chris Evan',
//             'Allergists',
//             '5.0'),
//         popularDoctorCard(
//             'https://img.icons8.com/external-victoruler-linear-colour-victoruler/344/external-doctor-medical-staff-characters-victoruler-linear-colour-victoruler-12.png',
//             'Dr. Helena',
//             'Therapist',
//             '4.9'),
//         popularDoctorCard(
//             'https://img.icons8.com/external-victoruler-linear-colour-victoruler/344/external-dentist-medical-staff-characters-victoruler-linear-colour-victoruler.png',
//             'Dr. Sultana Parvin',
//             'Dentist',
//             '4.6'),
//         popularDoctorCard(
//             'https://img.icons8.com/external-victoruler-linear-colour-victoruler/344/external-doctor-medical-staff-characters-victoruler-linear-colour-victoruler-6.png',
//             'Dr. Abdul Baker',
//             'Surgeon',
//             '4.5'),
//         popularDoctorCard(
//             'https://img.icons8.com/external-victoruler-linear-colour-victoruler/344/external-doctor-medical-staff-characters-victoruler-linear-colour-victoruler-7.png',
//             'Dr. Jaden Jordan',
//             'Cardiologists',
//             '4.5'),
//         popularDoctorCard(
//             'https://img.icons8.com/external-victoruler-linear-colour-victoruler/344/external-doctor-medical-staff-characters-victoruler-linear-colour-victoruler-14.png',
//             'Dr. Hafsa Akter',
//             'Gynecologists',
//             '4.2'),

//       ],
//     );
//   }

//   Widget popularDoctorCard(
//           String image, String name, String department, String rating) =>
//       Padding(
//         padding: const EdgeInsets.all(4.0),
//         child: SizedBox(
//           height: 150,
//           width: 150,
//           child: ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               primary: Colors.white,
//               onPrimary: Colors.blueAccent,
//               elevation: 8,
//               shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10)),
//             ),
//             onPressed: () {},
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 CircleAvatar(
//                   radius: 40,
//                   child: Image.network(image),
//                 ),
//                 Text(
//                   name,
//                   style: TextStyle(color: Colors.black),
//                 ),
//                 Text(
//                   department,
//                   style: TextStyle(color: Colors.grey),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                     color: Colors.deepOrange[50],
//                   ),
//                   width: 60,
//                   child: Padding(
//                     padding: const EdgeInsets.all(2),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceAround,
//                       children: [
//                         Icon(
//                           Icons.star,
//                           color: Colors.orange,
//                         ),
//                         Text(
//                           rating,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 15,
//                               color: Colors.black),
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       );
// }
