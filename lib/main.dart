import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:medicalthemeapp/pages/home_page.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: MyApp(),
//   ));
// }

void main() => runApp(const MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _select = 0;

  final List _list = [
    const HomePage(),
    const Text('Message Page'),
    const Text('Schedule Page'),
    const Text('Settings Page'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade300,
      bottomNavigationBar: FlashyTabBar(
        items: [
          FlashyTabBarItem(
              icon: const Icon(Icons.home_filled),
              title: const Text('Home'),
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.grey),
          FlashyTabBarItem(
              icon: const Icon(Icons.message_outlined),
              title: const Text('Messages'),
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.grey),
          FlashyTabBarItem(
              icon: const Icon(Icons.calendar_month),
              title: const Text('Schedule'),
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.grey),
          FlashyTabBarItem(
              icon: const Icon(Icons.settings_rounded),
              title: const Text('Settings'),
              activeColor: Colors.deepPurple,
              inactiveColor: Colors.grey),
        ],

        // backgroundColor: Colors.blue,
        animationDuration: const Duration(milliseconds: 500),
        selectedIndex: _select,
        onItemSelected: (i) {
          setState(() {
            _select = i;
          });
        },
      ),
      body: Container(
        child: _list.elementAt(_select),
      ),
    );
  }
}
