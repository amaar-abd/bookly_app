import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ssbb/core/utils/assets.dart';

class CustomeAppBar extends StatelessWidget {
  const CustomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Row(
        children: [
          Image.asset(AssetsData.logotwo, height: 100),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
