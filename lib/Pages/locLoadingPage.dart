import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';
import 'package:scerviceseeker/Pages/homePage.dart';

import '../Services/location.dart';

class LocationLoading extends StatefulWidget {
  const LocationLoading({super.key});

  @override
  State<LocationLoading> createState() => _LocationLoadingState();
}

class _LocationLoadingState extends State<LocationLoading> {
  double cLat = 0;
  double cLong = 0;
  void initState() {
    getLoc();
    // TODO: implement initState
    super.initState();
  }

  void getLoc() async {
    Location loc = Location();
    await loc.getCurrentLocation();
    cLat = loc.latitude;
    cLong = loc.longitude;
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => HomePage(
                  cLat: cLat,
                  cLong: cLong,
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(Icons.location_pin),
            SpinKitDoubleBounce(
              color: Colors.black26,
              size: 50.0,
            ),
            // Text('Fetching Location')
          ],
        ),
      ),
    );
  }
}
