import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTExtFild extends StatelessWidget {
  const CustomSearchTExtFild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: Colors.white),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(14),
        ),
        suffixIcon: Icon(
          FontAwesomeIcons.magnifyingGlass,
          size: 22,
          color: Colors.white,
        ),
        hintText: 'Search',
      ),
    );
  }
}
