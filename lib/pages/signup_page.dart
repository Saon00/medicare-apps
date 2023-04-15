import 'package:flutter/material.dart';
import 'package:medicalthemeapp/utils/colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final DateTime? _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1990),
            lastDate: DateTime(2025))
        .then((value) {
      setState(() {
        value = _dateTime!; 
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomsColors.backgroundColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // sign up text

            // email section

            // password section

            // mobile number section
            Text(_dateTime.toString(),
                style: const TextStyle(color: Colors.black, fontSize: 20)),

            // date of birth section
            ElevatedButton(
              onPressed: _showDatePicker,
              child: const Padding(
                padding: EdgeInsets.all(6),
                child: Text("Select your birthday"),
              ),
            ),

            // sign up button

            // already have account
          ],
        ),
      )),
    );
  }
}
