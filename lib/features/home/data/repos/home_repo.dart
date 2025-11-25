import 'package:dartz/dartz.dart';
import 'package:ssbb/core/errors/failure.dart';
import 'package:ssbb/features/home/data/models/book_nodel/book_nodel.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookNodel>>> fetchBestSellerBooks();
  Future<Either<Failure, List<BookNodel>>> fetchFeaturedBooks();
}
