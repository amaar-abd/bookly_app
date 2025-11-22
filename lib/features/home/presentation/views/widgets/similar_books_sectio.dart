import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/styles.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custom_list_view_book_datils.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'You can also like',
            style: Styles.subtitlebody.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(height: 15),
        CustomlistViewBookDatils(),
      ],
    );
  }
}
