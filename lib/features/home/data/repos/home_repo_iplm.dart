import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ssbb/core/errors/failure.dart';
import 'package:ssbb/core/utils/api_service.dart';
import 'package:ssbb/features/home/data/models/book_nodel/book_nodel.dart';
import 'package:ssbb/features/home/data/repos/home_repo.dart';
//ملتزمة بتعريف جميع الدوال (methods) الموجودة في الكلاسHomeRepo

class HomeRepoIplm implements HomeRepo {
  final ApiService apiService;
  HomeRepoIplm(this.apiService);
  @override
  Future<Either<Failure, List<BookNodel>>> fetchNewsedBooks() async {
    try {
      var data = await apiService.get(
        endpoint: 'https://www.googleapis.com/books/v1/volumes?q=programming',
      );
      List<BookNodel> books = [];
      for (var element in data['items']) {
        books.add(BookNodel.fromJson(element));
      }
      return right(books);
    } 
    catch (e) {
      if (e is DioException){
         return left(ServerFailure.fromDioException(e));
      }
        return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookNodel>>> fetchFeaturedBooks() {
    throw UnimplementedError();
  }
}
