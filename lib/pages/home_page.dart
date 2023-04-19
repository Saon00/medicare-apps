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
              child: Row(children: [
                GestureDetector(
                  child: Container(
                    color: Colors.white,
                    height: 150,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // rating
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow.shade700,
                                    size: 20,
                                  ),
                                  Icon(
                                    Icons.star_half,
                                    color: Colors.yellow.shade700,
                                    size: 20,
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    "4.5",
                                    style: GoogleFonts.poppins(fontSize: 15),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5),

                              // name
                              Text('Dr. FirstName',
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              Text('LastName',
                                  style: GoogleFonts.ubuntu(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              const SizedBox(height: 10),

                              //category icon & name
                              Row(
                                children: [
                                  Image.asset("assets/categoryIcons/heart.png",
                                      height: 20),
                                  const SizedBox(width: 5),
                                  Text(
                                    'Heart',
                                    style: GoogleFonts.ubuntu(fontSize: 17),
                                  )
                                ],
                              )
                              // button
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
