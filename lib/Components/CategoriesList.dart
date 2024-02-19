import 'package:flutter/material.dart';

import 'package:scerviceseeker/Components/categoriesCards.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        height: 75,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            Categories(
                imgpath: 'lib/Asset/Images/plumber.png', catogname: 'Plumber'),
            Categories(
                imgpath: 'lib/Asset/Images/massage-therapist-1.png',
                catogname: 'Massage Therapist'),
            Categories(
                imgpath: 'lib/Asset/Images/painter.png', catogname: 'Painter'),
            Categories(
                imgpath: 'lib/Asset/Images/dentist.png', catogname: 'Dentist'),
            Categories(
                imgpath: 'lib/Asset/Images/electrician.png',
                catogname: 'Electrician'),
          ],
        ),
      ),
    );
  }
}
