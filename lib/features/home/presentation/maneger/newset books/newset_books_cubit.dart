import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ssbb/features/home/data/models/book_model/book_model.dart';
import 'package:ssbb/features/home/data/repos/home_repo.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit(this.homeRepo) : super(NewsetBooksInitial());
  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(NewsetBooksFailuer(errorMesage: failure.errorMessege)),
      (books) => emit(NewsetBooksSuccess(books: books)),
    );
  }
}
