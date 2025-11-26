import 'package:dartz/dartz.dart';
import 'package:ssbb/core/errors/failure.dart';
import 'package:ssbb/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsedBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
