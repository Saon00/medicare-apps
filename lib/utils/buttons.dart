import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final Icon icon;
  const MyButton({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text),
              const SizedBox(width: 20),
              icon,
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
