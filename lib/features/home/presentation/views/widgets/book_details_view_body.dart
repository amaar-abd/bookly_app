import 'package:flutter/material.dart';
import 'package:ssbb/features/home/presentation/views/widgets/books_detils_section.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custom_appbar_book_details.dart';
import 'package:ssbb/features/home/presentation/views/widgets/similar_books_sectio.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                CustomAppBarBookDetails(),
                SizedBox(height: 20),
                BooksDetailsSections(),
                SizedBox(height: 20),
                Expanded(
                  child: SizedBox(height: 50, child: SimilarBooksSection()),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
