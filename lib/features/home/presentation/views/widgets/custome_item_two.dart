import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/assets.dart';
import 'package:ssbb/core/utils/styles.dart';

class CustomeItemTwo extends StatelessWidget {
  const CustomeItemTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 3 / 4,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AssetsData.imageone),
                  fit: BoxFit.fill,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                      'harry potter and the goblet of frie',
                      style: Styles.titleMeduim20.copyWith(
                        fontWeight: FontWeight.w400,fontFamily: 'GTSectra'
                      ),
                    ),
                    subtitle: Text('J.K Rowling ', style: Styles.subtitlebody),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 13),
                      Text('19.99 \$', style: Styles.titleMeduim20),
                      SizedBox(width: 40),
                      Icon(Icons.star, color: Colors.amber),
                      Text('4.8 ', style: Styles.titleMeduim20.copyWith(fontWeight: FontWeight.w400,)),
                      Text('(2390)', style: Styles.subtitlebody),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
