// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomError extends StatelessWidget {
  const CustomError({
    super.key,
    required this.errMessage,
  });

  final String errMessage;

  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: Styles.textStyle16,
      textAlign: TextAlign.center,
    );
  }
}
