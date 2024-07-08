import 'package:bookly_app/Core/utils/styles.dart';
import 'package:flutter/material.dart';

import 'custom_search_text_field.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSearchTextField(),
            SizedBox(height: 15),
            Text(
              'Search Results',
              style: Styles.textStyle14,
            ),
            SizedBox(height: 15),
            Expanded(child: SearchResultListView()),
          ],
        ),
      ),
    );
  }
}
