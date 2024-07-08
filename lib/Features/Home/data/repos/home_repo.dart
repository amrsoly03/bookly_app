import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failures, List<BookModel>>> fetchBestSellerbooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
