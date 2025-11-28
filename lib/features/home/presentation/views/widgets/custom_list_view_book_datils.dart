import 'package:flutter/material.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item.dart';

class CustomlistViewBookDatils extends StatelessWidget {
  const CustomlistViewBookDatils({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomeItem(imageUrl: 'https://www.google.com/imgres?q=bmw%20m50%20f90&imgurl=https%3A%2F%2Fpaultan.org%2Fimage%2F2020%2F06%2FF90-BMW-M5-M5-Competition-facelift-LCI-33.jpg&imgrefurl=https%3A%2F%2Fpaultan.org%2F2020%2F06%2F17%2Ff90-bmw-m5-facelift-lci-revealed%2F&docid=7D52EEapZM25SM&tbnid=jBBFcFuuQonRRM&vet=12ahUKEwiI0frG7ZWRAxWBSvEDHfPYAlQQM3oECBsQAA..i&w=3934&h=2059&hcb=2&ved=2ahUKEwiI0frG7ZWRAxWBSvEDHfPYAlQQM3oECBsQAA',),
          );
        },
      ),
    );
  }
}
