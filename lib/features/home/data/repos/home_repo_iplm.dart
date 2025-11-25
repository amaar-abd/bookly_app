import 'package:dartz/dartz.dart';
import 'package:ssbb/core/errors/failure.dart';
import 'package:ssbb/features/home/data/models/book_nodel/book_nodel.dart';
import 'package:ssbb/features/home/data/repos/home_repo.dart';

class HomeRepoIplm implements HomeRepo{
  @override
  Future<Either<Failure, List<BookNodel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookNodel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
} //ملتزمة بتعريف جميع الدوال (methods) الموجودة في الكلاسHomeRepo     