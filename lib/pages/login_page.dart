import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalthemeapp/utils/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColors.backgroundColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("MediCare", style: GoogleFonts.comfortaa(fontSize: 30)),
            const SizedBox(height: 15),
            const TextField(
              
            ),
          ],
        ),
      )),
    );
  }
}
