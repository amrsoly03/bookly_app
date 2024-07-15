import 'package:bookly_app/Core/errors/failures.dart';
import 'package:bookly_app/Core/utils/api_service.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestbooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:Programming&Filtring=free_ebooks&sorting=newest');

      List<BookModel> books = [];

      for (var item in data.values) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async{
     try {
      var data = await apiService.get(
          endPoint:
              'volumes?q=subject:Programming&Filtring=free_ebooks');

      List<BookModel> books = [];

      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailures.fromDioError(e));
      }
      return left(ServerFailures(e.toString()));
    }
  }
}
