import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;
  const MyButton({
    Key? key,
    required this.text, required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: ontap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              const SizedBox(width: 20),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue.shade100,
            foregroundColor: Colors.black,
            textStyle: GoogleFonts.comfortaa(fontWeight: FontWeight.bold),
          )),
    );
  }
}
