import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextFields extends StatelessWidget {
  final String introText;
  final String? hintText;
  final bool? obscure;
  final TextInputType? textInputType;
  const MyTextFields({
    Key? key,
    required this.introText,
    this.hintText,
    this.obscure,
    this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(introText, style: GoogleFonts.jost(fontSize: 20)),
      const SizedBox(height: 10),
      TextField(
        keyboardType: textInputType ?? TextInputType.text,
        obscureText: obscure ?? false,
        decoration: InputDecoration(
            hintText: hintText ?? '',
            hintStyle: GoogleFonts.quicksand(),
            fillColor: Colors.green.shade100,
            filled: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
      ),
    ]);
  }
}
