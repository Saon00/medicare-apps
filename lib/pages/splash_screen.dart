import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medicalthemeapp/widgets/bottom_nav_bar.dart';

class SpalashScreen extends StatefulWidget {
  const SpalashScreen({Key? key}) : super(key: key);

  @override
  State<SpalashScreen> createState() => _SpalashScreenState();
}

class _SpalashScreenState extends State<SpalashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const MainBottomNavBar()),
            (route) => false));
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/splash.svg',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
