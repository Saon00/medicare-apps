import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalthemeapp/utils/colors.dart';

import '../utils/buttons.dart';
import '../utils/square_box.dart';
import '../utils/textform.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      backgroundColor: CustomsColors.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // medicare text and icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/medicon.svg',
                      height: 40,
                    ),
                    const SizedBox(width: 10),
                    Text("MediCare",
                        style: GoogleFonts.comfortaa(fontSize: 30)),
                  ],
                ),
                const SizedBox(height: 60),

                // email part
                const MyTextFields(
                  introText: 'Your email address',
                  hintText: 'abc@email.com',
                ),

                const SizedBox(height: 5),

                // password part
                const MyTextFields(
                  introText: 'Your password',
                  obscure: true,
                ),

                // forgot password
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text("forgot password !!",
                            style: GoogleFonts.comfortaa(
                                color: Colors.blue.shade400))),
                  ],
                ),
                const SizedBox(height: 20),

                // login button
                const MyButton(
                    text: 'Login',
                    icon: Icon(Icons.arrow_forward_ios_rounded, size: 20)),
                const SizedBox(height: 20),

                Row(
                  children: [
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text("Or connect with",
                          style: GoogleFonts.comfortaa(color: Colors.grey)),
                    ),
                    const Expanded(
                      child: Divider(
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // alternative account login
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SquareBox(imagePath: 'assets/google.svg'),
                      SizedBox(width: 15),
                      SquareBox(imagePath: 'assets/apple_logo.svg'),
                    ]),

                const SizedBox(height: 50),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't our member?",
                        style: GoogleFonts.comfortaa(color: Colors.black38)),
                    // const SizedBox(width: 5),
                    TextButton(
                      onPressed: () {},
                      child: Text('Be our Member',
                          style: GoogleFonts.comfortaa(
                              color: Colors.blue.shade400)),
                    )
                  ],
                )
              ],
            ),
          )),
        ),
      ),
    );
  }
}
