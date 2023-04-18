import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/category_widgetss.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // search box
            TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "Search",
                hintStyle: GoogleFonts.ubuntu(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 15),

            // categories
            Text("Category", style: GoogleFonts.poppins(fontSize: 20)),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryWidgets(
                      categoryName: 'Heart',
                      imagePath: 'assets/heart.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Eye',
                      imagePath: 'assets/eye.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Dental',
                      imagePath: 'assets/teeth.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Blood',
                      imagePath: 'assets/blood.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Medicine',
                      imagePath: 'assets/caduceus.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Brain',
                      imagePath: 'assets/brain.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Nose',
                      imagePath: 'assets/nose.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Pregnancy',
                      imagePath: 'assets/pregnant.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Stomach',
                      imagePath: 'assets/stomach.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
