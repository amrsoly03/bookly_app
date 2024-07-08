import 'package:bookly_app/Core/utils/app_router.dart';
import 'package:bookly_app/Core/utils/assets.dart';
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:bookly_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key});

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
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage(AssetsData.testItem),
                    fit: BoxFit.fill,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
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
                      'Lord Of The Rings: Return Of The King',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGTSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  const Text(
                    'R.R Toalken',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  const Row(
                    children: [
                      Text(
                        '19.99 \$',
                        style: Styles.textStyle20,
                      ),
                      Spacer(),
                      BookRating(),
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
