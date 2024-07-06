import 'package:bookly_app/Features/Home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';

import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              const CustomBookDetailsAppBar(),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.17),
                child: const CustomBookItem(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
