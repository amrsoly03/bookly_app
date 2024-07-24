import 'package:bookly_app/Core/widgets/custom_error.dart';
import 'package:bookly_app/Core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/Features/Home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.15,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (context, index) => const Padding(
                padding: EdgeInsets.only(right: 10),
                child: CustomBookItem(
                  imageUrl:
                      'https://preview.redd.it/this-lotr-poster-by-phantom-city-creative-is-still-one-of-v0-d93hacxq8khb1.jpg?auto=webp&s=4e8aa6c0b43b2614dd36830c69e52a5fd88a233f',
                ),
              ),
            ),
          );
        }else if(state is SimilarBooksFailure){
          return CustomError(errMessage: state.errMessage);
        }else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
