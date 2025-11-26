import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ssbb/features/home/data/models/book_model/book_model.dart';

part 'bookly_books_state.dart';

class BooklyBooksCubit extends Cubit<BooklyBooksState> {
  BooklyBooksCubit() : super(BooklyBooksInitial());
}
