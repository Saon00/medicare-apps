import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/category_widgetss.dart';
import '../widgets/top_doctors_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
            const SizedBox(height: 25),

            // categories
            Text("Category", style: GoogleFonts.poppins(fontSize: 20)),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryWidgets(
                      categoryName: 'Heart',
                      imagePath: 'assets/categoryIcons/heart.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Eye',
                      imagePath: 'assets/categoryIcons/eye.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Dental',
                      imagePath: 'assets/categoryIcons/teeth.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Blood',
                      imagePath: 'assets/categoryIcons/blood.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Medicine',
                      imagePath: 'assets/categoryIcons/caduceus.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Brain',
                      imagePath: 'assets/categoryIcons/brain.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Nose',
                      imagePath: 'assets/categoryIcons/nose.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Pregnancy',
                      imagePath: 'assets/categoryIcons/pregnant.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                  CategoryWidgets(
                      categoryName: 'Stomach',
                      imagePath: 'assets/categoryIcons/stomach.png',
                      ontap: () {}),
                  const SizedBox(width: 20),
                ],
              ),
            ),

            const SizedBox(height: 25),

            // top doctors
            Text("Top Doctors", style: GoogleFonts.poppins(fontSize: 20)),
            const SizedBox(height: 5),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  TopDoctorsLits(
                    firstName: 'Dr. Robert',
                    lastName: 'Alber',
                    docCategoryName: 'Brain',
                    imgPath: 'assets/categoryIcons/brain.png',
                    rating: '4.5',
                    docImgpath: 'assets/doctorIcons/doctor01.png',
                  ),
                  SizedBox(width: 20),
                  TopDoctorsLits(
                    firstName: 'Dr. Ana',
                    lastName: 'Aslan',
                    docCategoryName: 'Pregnancy',
                    imgPath: 'assets/categoryIcons/pregnant.png',
                    rating: '4.5',
                    docImgpath: 'assets/doctorIcons/doctor02.png',
                  ),
                  SizedBox(width: 20),
                  TopDoctorsLits(
                    firstName: 'Dr. John',
                    lastName: 'kaber',
                    docCategoryName: 'Dental',
                    imgPath: 'assets/categoryIcons/teeth.png',
                    rating: '4.5',
                    docImgpath: 'assets/doctorIcons/doctor03.png',
                  ),
                  SizedBox(width: 20),
                  TopDoctorsLits(
                    firstName: 'Dr. Rubina',
                    lastName: 'Sharmin',
                    docCategoryName: 'Blood',
                    imgPath: 'assets/categoryIcons/blood.png',
                    rating: '4.5',
                    docImgpath: 'assets/doctorIcons/doctor04.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
