
import 'package:flutter/material.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item_two.dart';

class CustomeitemTWoListView extends StatelessWidget {
  const CustomeitemTWoListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: CustomeItemTwo(),
          );
        },
      ),
    );
  }
}
