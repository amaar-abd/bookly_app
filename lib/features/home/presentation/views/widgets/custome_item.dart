import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/assets.dart';

class CustomeItem extends StatelessWidget {
  const CustomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .35, //Responsive
      child: AspectRatio(
        aspectRatio: 2.2 / 3,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsData.imagteo),
              fit: BoxFit.fill,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
