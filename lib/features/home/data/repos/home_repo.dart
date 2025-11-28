import 'package:dartz/dartz.dart';
import 'package:ssbb/core/errors/failure.dart';
import 'package:ssbb/features/home/data/models/book_model/book_model.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookModel>>> fetchNewsedBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
// UI ------> UseCase ------> Repository ------> Data Source

//الهدف منه برمجياً
// هذا يمثل "طبقة" Repository في clean architecture.

// الوظيفة الأساسية:

// تعريف ما الذي يجب أن تقدمه طبقة البيانات (Data layer)
// بدون أن نهتم من أين تأتي البيانات.


// 1. Future

// يعني الدالة asynchronous (قد تنتظر API أو Database)

// 2. Either

// من مكتبة dartz
// وتعني:

// ✔ إذا نجحت العملية → return right
// ❌ إذا فشلت → return left

