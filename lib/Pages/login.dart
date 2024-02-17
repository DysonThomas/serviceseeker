import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class LoginPage extends StatefulWidget {
  final int pictnum;

  const LoginPage({super.key, required this.pictnum});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  'Enter Your Phone Number',
                  style: GoogleFonts.bebasNeue(
                    color: Colors.black,
                    fontSize: 30,
                  ),
                ),
                // Phone Number Text
                const Padding(
                  padding: EdgeInsets.fromLTRB(65, 10, 65, 10),
                  child: IntlPhoneField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    initialCountryCode: 'CA',
                  ),
                ),
                Container(
                  child: Icon(Icons.arrow_forward_sharp),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
