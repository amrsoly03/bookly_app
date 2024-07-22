import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'book_action.dart';
import 'custom_book_details_appbar.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                  child: const CustomBookItem(
                    imageUrl: 'https://preview.redd.it/this-lotr-poster-by-phantom-city-creative-is-still-one-of-v0-d93hacxq8khb1.jpg?auto=webp&s=4e8aa6c0b43b2614dd36830c69e52a5fd88a233f',
                  ),
                ),
                const SizedBox(height: 40),
                Text(
                  'Lord Of The Rings',
                  style: Styles.textStyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                Opacity(
                  opacity: 0.7,
                  child: Text(
                    'R.R Toalken',
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                  count: 0,
                  rating: 0,
                ),
                const SizedBox(height: 37),
                const BookAction(),
                const Expanded(child: SizedBox(height: 50)),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'you may also like',
                    style: Styles.textStyle16,
                  ),
                ),
                const SizedBox(height: 15),
                const SimilarBooksListView(),
                const SizedBox(height: 15),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
