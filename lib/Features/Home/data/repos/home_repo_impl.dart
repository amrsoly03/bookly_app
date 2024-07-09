import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';

class HomeRepoImpl implements HomeRepo {  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerbooks() {
    // TODO: implement fetchBestSellerbooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
