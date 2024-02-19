import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  final String street;
  const Search({super.key, required this.street});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 0, 20, 10),
      child: Container(
        child: TextField(
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.transparent)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.transparent)),
              filled: true,
              fillColor: Color.fromARGB(255, 223, 244, 255),
              hintText: 'Search services near ${street}',
              prefixIcon: Icon(Icons.search)),
        ),
      ),
    );
  }
}
