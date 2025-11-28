import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ssbb/core/errors/failure.dart';
import 'package:ssbb/core/utils/api_service.dart';
import 'package:ssbb/features/home/data/models/book_model/book_model.dart';
import 'package:ssbb/features/home/data/repos/home_repo.dart';
//ملتزمة بتعريف جميع الدوال (methods) الموجودة في الكلاسHomeRepo

// هو التنفيذ الحقيقي للـ Repository
// فقط هذا الملف هو المسؤول عن الوصول الحقيقي للداتا
class HomeRepoIplm implements HomeRepo {
  final ApiService apiService;
  HomeRepoIplm(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsedBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            'https://www.googleapis.com/books/v1/volumes?q=programming&orderBy=newest&filter=free-ebooks',
      );
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
        endpoint:
            'https://www.googleapis.com/books/v1/volumes?q=programming&filter=free-ebooks',);
      List<BookModel> books = [];
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element));
      }
      return right(books);

    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
