import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
