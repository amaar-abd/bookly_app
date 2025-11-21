import 'package:flutter/material.dart';
import 'package:ssbb/core/utils/styles.dart';
import 'package:ssbb/features/home/presentation/views/widgets/books_actions.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custom_appbar_book_details.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomAppBarBookDetails(),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: CustomeItem(),
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
              Text('(2390)', style: Styles.subtitlebody),
            ],
          ),
          SizedBox(height: 20),
          BooksActions(),
        ],
      ),
    );
  }
}
