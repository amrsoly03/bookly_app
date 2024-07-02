import 'package:bookly_app/Core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AssetsData.testItem),
            fit: BoxFit.fill,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
