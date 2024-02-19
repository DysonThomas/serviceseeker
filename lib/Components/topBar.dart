import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBar extends StatelessWidget {
  const TopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,",
                style: TextStyle(color: Colors.grey[900], fontSize: 25),
              ),
              Text(
                "Dyson Thomas",
                style: GoogleFonts.bebasNeue(fontSize: 32, letterSpacing: 3),
              )
            ],
          ),
          CircleAvatar(
            backgroundImage: AssetImage('lib/Asset/Images/Worker-2.png'),
          )
        ],
      ),
    );
  }
}
