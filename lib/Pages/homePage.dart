import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:scerviceseeker/Components/CategoriesList.dart';
import 'package:scerviceseeker/Components/categoriesCards.dart';
import 'package:scerviceseeker/Components/search.dart';
import 'package:scerviceseeker/Components/topBar.dart';

class HomePage extends StatefulWidget {
  final double cLat;
  final double cLong;
  const HomePage({super.key, required this.cLat, required this.cLong});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _address = '';
  String _street = '';
  String _Country = '';
  String _locality = '';
  String _Postalcode = '';
  @override
  void initState() {
    super.initState();
    getAddressFromCoordinates(widget.cLat, widget.cLong);
  }

  Future<void> getAddressFromCoordinates(
      double latitude, double longitude) async {
    try {
      List<Placemark> placemarks =
          await placemarkFromCoordinates(latitude, longitude);
      Placemark place = placemarks[0];
      setState(() {
        _street = "${place.street}";
        _locality = "${place.locality}";
        _Postalcode = "${place.postalCode}";
        _Country = "${place.country}";
        _address =
            "${place.street}, ${place.locality}, ${place.postalCode}, ${place.country}";
        print(_address);
      });
    } catch (e) {
      print("Error: $e");
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: SafeArea(
        child: Column(
          children: [
            TopBar(),
            Search(
              street: _street,
            ),
            CategoriesList()
          ],
        ),
      )),
    );
  }
}
