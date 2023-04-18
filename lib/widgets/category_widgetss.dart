import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryWidgets extends StatelessWidget {
  final VoidCallback ontap;
  final String categoryName;
  final String imagePath;
  const CategoryWidgets({
    Key? key,
    required this.ontap,
    required this.categoryName,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset(imagePath),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(categoryName, style: GoogleFonts.ubuntu(fontSize: 17))
      ],
    );
  }
}
