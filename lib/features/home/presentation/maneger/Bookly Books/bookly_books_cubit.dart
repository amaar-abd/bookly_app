import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ssbb/features/home/data/models/book_model/book_model.dart';
import 'package:ssbb/features/home/data/repos/home_repo.dart';
part 'bookly_books_state.dart';




class BooklyBooksCubit extends Cubit<BooklyBooksState> {
  BooklyBooksCubit(this.homeRepo) : super(BooklyBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(BooklyBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    
    result.fold((failure) => emit(BooklyBooksFailuer(errorMesage: failure.errorMessege)),
      (books) => emit(BooklyBooksSuccess(books: books)),
    );
  }
}
