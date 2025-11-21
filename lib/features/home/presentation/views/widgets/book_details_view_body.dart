import 'package:flutter/material.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custom_appbar_book_details.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CustomAppBarBookDetails(),
    ]);
  }
}
