import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBarBookDetails extends StatelessWidget {
  const CustomAppBarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.close, size: 35)),
            Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(FontAwesomeIcons.cartArrowDown),
            ),
          ],
        ),
      ),
    );
  }
}
