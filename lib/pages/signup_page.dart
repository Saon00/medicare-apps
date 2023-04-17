import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medicalthemeapp/pages/login_page.dart';
import 'package:medicalthemeapp/utils/buttons.dart';
import 'package:medicalthemeapp/utils/textform.dart';

import '../utils/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  // DateTime? _selectedDate = DateTime.now();

  // //Method for showing the date picker
  // void _pickDateDialog() {
  //   showDatePicker(
  //           context: context,
  //           initialDate: DateTime.now(),
  //           //which date will display when user open the picker
  //           firstDate: DateTime(1950),
  //           //what will be the previous supported year in picker
  //           lastDate: DateTime
  //               .now()) //what will be the up to supported date in picker
  //       .then((pickedDate) {
  //     //then usually do the future job
  //     if (pickedDate == null) {
  //       //if user tap cancel then this function will stop
  //       return;
  //     }
  //     setState(() {
  //       //for rebuilding the ui
  //       _selectedDate = pickedDate;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColors.backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // sign up text
              Text('Sign up ', style: GoogleFonts.poppins(fontSize: 40)),
              const SizedBox(height: 30),

              // email section
              const MyTextFields(
                introText: 'Enter your Email',
                hintText: "abc@gmail.com",
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 15),

              // password section
              const MyTextFields(
                  introText: 'Enter your password', obscure: true),
              const SizedBox(height: 15),

              // mobile number section
              const MyTextFields(
                introText: 'Enter Mobile Number',
                hintText: '01xxxxxxxxx',
                textInputType: TextInputType.number,
              ),
              const SizedBox(height: 30),

              // date of birth section

              // ElevatedButton(
              //   onPressed: _pickDateDialog,
              //   child: const Padding(
              //     padding: EdgeInsets.all(6),
              //     child: Text("Select your birthday"),
              //   ),
              // ),

              // Text(_selectedDate.toString(),
              //     style: const TextStyle(color: Colors.black, fontSize: 20)),
              // const SizedBox(height: 15),

              // sign up button
              MyButton(
                  text: 'Continue',
                  ontap: () {
                    setState(() {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                          (route) => false);
                    });
                  }),
              const SizedBox(height: 30),

              // already have account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already our member?",
                      style: GoogleFonts.comfortaa(color: Colors.black38)),
                  // const SizedBox(width: 5),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      });
                    },
                    child: Text('Login',
                        style:
                            GoogleFonts.comfortaa(color: Colors.blue.shade400)),
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
