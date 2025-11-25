import 'package:flutter/material.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item_two.dart';

class ResultListView extends StatelessWidget {
  const ResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: CustomeItemTwo(),
        );
      },
    );
  }
}
