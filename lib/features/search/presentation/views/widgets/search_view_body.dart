import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/styles.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custom_search_text_fild.dart';
import 'package:ssbb/features/home/presentation/views/widgets/result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6),
          CustomSearchTExtFild(),
          SizedBox(height: 16),
          Text('Search Result', style: Styles.titleMeduim20),
          SizedBox(height: 16),
          Expanded(child: ResultListView()),
        ],
      ),
    );
  }
}
