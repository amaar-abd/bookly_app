import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ssbb/core/widgets/custom_errormessage_widget.dart';
import 'package:ssbb/features/home/presentation/maneger/Bookly%20Books/bookly_books_cubit.dart';
import 'package:ssbb/features/home/presentation/views/widgets/custome_item.dart';

class BooklyListViewItem extends StatelessWidget {
  const BooklyListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BooklyBooksCubit, BooklyBooksState>(
      builder: (context, state) {
        if (state is BooklyBooksSuccess) {
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
        } else if (state is BooklyBooksFailuer) {
          return CustomErrormessageWidget(text: state.errorMesage);
        } else {
          return Center(child: CircularProgressIndicator(color: Colors.white,));
        }
      },
    );
  }
}
