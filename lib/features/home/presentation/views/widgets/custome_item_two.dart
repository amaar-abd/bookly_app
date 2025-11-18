import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/assets.dart';
import 'package:ssbb/core/utils/styles.dart';

class CustomeItemTwo extends StatelessWidget {
  const CustomeItemTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AssetsData.imageone, height: 160, width: 120),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'harry potter and the goblet of frie',
                    style: Styles.titlebody,
                  ),
                  subtitle: Text('J.K Rowling ', style: Styles.subtitlebody),
                ),
                Row(
                  children: [
                    SizedBox(width: 13),
                    Text('19.99 \$', style: Styles.titleMeduim),
                    SizedBox(width: 40),
                    Icon(Icons.star, color: Colors.amber),
                    Text('4.8 ', style: Styles.titlebody),
                    Text('(2390)', style: Styles.subtitlebody),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
