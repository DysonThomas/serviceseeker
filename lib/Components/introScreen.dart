import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intropage extends StatelessWidget {
  final String imgpath;
  final String desc;
  const Intropage({super.key, required this.imgpath, required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            imgpath,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              desc,
              style: GoogleFonts.bebasNeue(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
