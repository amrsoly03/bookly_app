import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CustomBookItem(
            imageUrl: 'https://preview.redd.it/this-lotr-poster-by-phantom-city-creative-is-still-one-of-v0-d93hacxq8khb1.jpg?auto=webp&s=4e8aa6c0b43b2614dd36830c69e52a5fd88a233f',
          ),
        ),
      ),
    );
  }
}
