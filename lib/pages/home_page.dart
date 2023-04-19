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

class TopDoctorsLits extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String rating;
  final String docCategoryName;
  final String docImgpath;
  final String imgPath;

  const TopDoctorsLits({
    Key? key,
    required this.firstName,
    required this.lastName,
    required this.rating,
    required this.docCategoryName,
    required this.imgPath,
    required this.docImgpath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // rating
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                      size: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                      size: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                      size: 10,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow.shade700,
                      size: 10,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow.shade700,
                      size: 10,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      rating,
                      style: GoogleFonts.poppins(fontSize: 10),
                    )
                  ],
                ),
                const SizedBox(height: 5),

                // name
                Text(firstName,
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold, fontSize: 15)),
                Text(lastName,
                    style: GoogleFonts.ubuntu(
                        fontWeight: FontWeight.bold, fontSize: 15)),
                const SizedBox(height: 10),

                //category icon & name
                Row(
                  children: [
                    Image.asset(imgPath, height: 15),
                    const SizedBox(width: 5),
                    Text(
                      docCategoryName,
                      style: GoogleFonts.ubuntu(fontSize: 13),
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Image.asset(
                docImgpath,
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward_rounded,
                      size: 20,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
