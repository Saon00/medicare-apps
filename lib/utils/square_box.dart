import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SquareBox extends StatelessWidget {
  final String imagePath;

  const SquareBox({
    required this.imagePath,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60,
        width: 60,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.blue.shade100,
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10)),
        child: SvgPicture.asset(imagePath),
      ),
    );
  }
}
