// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/constants.dart';

import 'book_rating.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            CustomBookItem(
              imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail?? '',
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      const Text(
                        'Free',
                        style: Styles.textStyle20,
                      ),
                      const Spacer(),
                      BookRating(
                        rating: 5,
                        count: bookModel.volumeInfo.pageCount ?? 0,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
