import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:scerviceseeker/Pages/locLoadingPage.dart';

class OtpPage extends StatefulWidget {
  final int pictnum;
  const OtpPage({super.key, required this.pictnum});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 10),
                Hero(
                  tag: 'avatarTag',
                  child: Image.asset(
                    'lib/Asset/Images/worker-${widget.pictnum}.png',
                    height: 350,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Enter Your OTP',
                  style: GoogleFonts.bebasNeue(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                // Phone Number Text
                Padding(
                  padding: const EdgeInsets.fromLTRB(65, 5, 65, 5),
                  child: Container(
                      // Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        // Grey background color
                        borderRadius:
                            BorderRadius.circular(10.0), // Rounded corners
                        // Border// Rounded corners
                      ),
                      child: TextField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.phone,
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LocationLoading()),
                    );
                  },
                  child: Container(
                    child: Icon(Icons.arrow_forward_sharp),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
