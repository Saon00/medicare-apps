import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:medicalthemeapp/utils/colors.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  var _selectIndex = 0;

  final List<Widget> _list = [
    const Text("01"),
    const Text("02"),
    const Text("03"),
    const Text("04"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColors.backgroundColor,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: CustomsColors.backgroundColor,
        animationDuration: const Duration(milliseconds: 300),
        items: const [
          Icon(Icons.home_max_outlined),
          Icon(Icons.calendar_month_sharp),
          Icon(Icons.message_outlined),
          Icon(Icons.settings),
        ],
        onTap: (index) {
          setState(() {
            _selectIndex = index;
          });
        },
      ),
      body: Center(
        child: _list[_selectIndex],
      ),
    );
  }
}
