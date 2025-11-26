part of 'newset_books_cubit.dart';

sealed class NewsetBooksState extends Equatable {
  const NewsetBooksState();

  @override
  List<Object> get props => [];
}

final class NewsetBooksInitial extends NewsetBooksState {}
final class NewsetBooksLoading  extends NewsetBooksState {}
final class NewsetBooksFailuer  extends NewsetBooksState {
   final String errorMesage;
  const NewsetBooksFailuer({required this.errorMesage});
}
final class NewsetBooksSuccess extends NewsetBooksState {
   final List<BookModel> books;

 const NewsetBooksSuccess({required this.books});
}
