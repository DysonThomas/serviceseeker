import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:scerviceseeker/Components/introScreen.dart';
import 'package:scerviceseeker/Pages/login.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController _controller = PageController();
  bool onLastpage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Center(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            PageView(
              controller: _controller,
              children: [
                Intropage(
                  imgpath: 'lib/Asset/Images/worker-0.png',
                  desc: 'Find skilled professionals at your fingertips.',
                ),
                Intropage(
                  imgpath: 'lib/Asset/Images/worker-1.png',
                  desc: 'Simplify your life with our trusted experts.',
                ),
                Intropage(
                  imgpath: 'lib/Asset/Images/worker-2.png',
                  desc: 'No more DIY disasters – leave it to the pros.',
                ),
              ],
            ),
            Container(
              alignment: Alignment(0, .3),
              child: SmoothPageIndicator(controller: _controller, count: 3),
            ),
            // Sign Button
            GestureDetector(
              onTap: (() {
                int currentPage = _controller.page?.round() ?? 0;

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(
                              pictnum: currentPage,
                            )));
              }),
              child: Container(
                  alignment: Alignment(0, .5),
                  child: Container(
                    child: Center(
                        child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
                    height: 65,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 5, 5, 92),
                        borderRadius: BorderRadius.circular(30)),
                  )),
            ),
            GestureDetector(
              onTap: (() {
                int currentPage = _controller.page?.round() ?? 0;

                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => LoginPage(
                              pictnum: currentPage,
                            )));
              }),
              child: Container(
                  alignment: Alignment(0, .7),
                  child: Container(
                    child: Center(
                        child: Text(
                      "Professional Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )),
                    height: 65,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 5, 5, 92),
                        borderRadius: BorderRadius.circular(30)),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
