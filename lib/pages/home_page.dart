// import 'package:flutter/material.dart';
// import 'package:medicalthemeapp/widgets/emoticonswidgets.dart';
// import 'package:medicalthemeapp/widgets/introwidgets.dart';
// import 'package:medicalthemeapp/widgets/populardoctorwidgets.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: ListView(
//           // shrinkWrap: true,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // name and hi sign
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Text(
//                             "Saon Sikder    👋",
//                             style: TextStyle(
//                                 fontSize: 25, fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             'Dhaka, Bangladesh',
//                             style: TextStyle(color: Colors.blueGrey),
//                           )
//                         ],
//                       ),

//                       // profile icon
//                       CircleAvatar(
//                         radius: 25,
//                         child: Image.network(
//                             'https://img.icons8.com/external-others-cattaleeya-thongsriphong/2x/external-Man-male-avatar-color-line-others-cattaleeya-thongsriphong-14.png'),
//                       )
//                     ],
//                   ),

//                   const SizedBox(height: 20),

//                   // clinic visit card
//                   SingleChildScrollView(
//                     scrollDirection: Axis.horizontal,
//                     child: Row(
//                       children: const [
//                         IntroWidgets(
//                             icon: Icons.add_circle,
//                             title: 'Clinic Visit',
//                             subtitle: 'Make an appointment'),
//                         IntroWidgets(
//                             icon: Icons.home_filled,
//                             title: 'Home Visit',
//                             subtitle: 'Call the doctor home'),
//                         IntroWidgets(
//                             icon: Icons.factory_outlined,
//                             title: 'Office Visit',
//                             subtitle: 'Call the medical team office'),
//                         IntroWidgets(
//                             icon: Icons.local_hospital_outlined,
//                             title: 'Emergency Visit',
//                             subtitle: 'Get instant services'),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 20),

//                   // what are your symptoms
//                   const Text(
//                     'What are your symptoms?',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 20),

//                   const EmoticonsWidgets(),

//                   const SizedBox(height: 30),

//                   // popular doctors
//                   const Text(
//                     'Popular doctors',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 20),

//                   PopularDoctorWidgets(),
//                 ],
//               ),
//             ),
//           ]),
//     );
//   }
// }
