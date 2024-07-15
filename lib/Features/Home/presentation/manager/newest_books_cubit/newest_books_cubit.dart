import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksInitial());

    var result = await homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
