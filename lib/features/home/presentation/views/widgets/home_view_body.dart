import 'package:flutter/material.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_appbar.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [CustomeAppBar(), CustomeListViewItem()]);
  }
}

class CustomeListViewItem extends StatelessWidget {
  const CustomeListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: CustomeItem(),
          );
        },
      ),
    );
  }
}
