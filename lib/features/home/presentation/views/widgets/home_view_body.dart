import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/styles.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_appbar.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item_list_view.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item_two_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeAppBar(),
          BooklyListViewItem(),
          SizedBox(height: 40),
          Text('Best Seller', style: Styles.titleMeduim20),
          BestSellerListView(),
        ],
      ),
    );
  }
}
