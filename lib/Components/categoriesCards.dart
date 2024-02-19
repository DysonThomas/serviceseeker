import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Categories extends StatelessWidget {
  final String imgpath;
  final String catogname;
  const Categories({super.key, required this.imgpath, required this.catogname});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4.0),
      child: Container(
        width: 150,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 223, 244, 255),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Flexible(
                child: Image.asset(
                  imgpath,
                  width: 40,
                ),
              ),
              SizedBox(
                  width: 10), // Adjust spacing between image and text as needed
              Flexible(
                child: Text(
                  catogname,
                  style:
                      GoogleFonts.roboto(fontSize: 12, color: Colors.grey[900]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
