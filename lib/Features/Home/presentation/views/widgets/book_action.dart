import 'package:bookly_app/Core/functions/launch_url.dart';
import 'package:bookly_app/Core/widgets/custom_button.dart';
import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              text: '19.99\$',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: 'Preview',
              onPressed: () {
                customLaunchUrl(
                  context,
                  bookModel.volumeInfo.previewLink!,
                );
              },
              backgroundColor: const Color(0xffEF8262),
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
