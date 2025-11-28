import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/styles.dart';
import 'package:ssbb/features/home/presentation/views/widgets/books_actions.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item.dart';

class BooksDetailsSections extends StatelessWidget {
  const BooksDetailsSections({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomeItem(imageUrl: 'https://www.google.com/imgres?q=bmw%20m50%20f90&imgurl=https%3A%2F%2Fpaultan.org%2Fimage%2F2020%2F06%2FF90-BMW-M5-M5-Competition-facelift-LCI-33.jpg&imgrefurl=https%3A%2F%2Fpaultan.org%2F2020%2F06%2F17%2Ff90-bmw-m5-facelift-lci-revealed%2F&docid=7D52EEapZM25SM&tbnid=jBBFcFuuQonRRM&vet=12ahUKEwiI0frG7ZWRAxWBSvEDHfPYAlQQM3oECBsQAA..i&w=3934&h=2059&hcb=2&ved=2ahUKEwiI0frG7ZWRAxWBSvEDHfPYAlQQM3oECBsQAA',),
        ),
        SizedBox(height: 40),
        Text(
          'The Jangle Book',
          style: Styles.titleMeduim30.copyWith(fontFamily: 'GTSectra'),
        ),
        SizedBox(height: 5),
        Text(
          'Rudyard Kipling',
          style: Styles.subtitlebody.copyWith(fontFamily: 'Ciro'),
        ),
        SizedBox(height: 12),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.star, color: Colors.amber),
            Text(
              '4.8 ',
              style: Styles.subtitlebody.copyWith(color: Colors.white),
            ),
            Text(
              '(2390)',
              style: Styles.subtitlebody,
              textAlign: TextAlign.start,
            ),
          ],
        ),
        SizedBox(height: 20),
        BooksActions(),
      ],
    );
  }
}
