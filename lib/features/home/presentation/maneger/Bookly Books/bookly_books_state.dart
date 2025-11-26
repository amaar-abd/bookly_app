part of 'bookly_books_cubit.dart';

sealed class BooklyBooksState extends Equatable {
  const BooklyBooksState();

}

final class BooklyBooksInitial extends BooklyBooksState {}

final class BooklyBooksLoading extends BooklyBooksState {}

final class BooklyBooksFailuer extends BooklyBooksState {
  final String errorMesage;
  const BooklyBooksFailuer({required this.errorMesage});
}

final class BooklyBooksSuccess extends BooklyBooksState {
  final List<BookModel> books;

 const BooklyBooksSuccess({required this.books});
}
