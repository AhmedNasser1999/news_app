import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/news_categories_item.dart';

class Entertainment extends StatelessWidget {
  const Entertainment({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const NewsCategoryItem(),
      separatorBuilder: (BuildContext context, int index) {
        return const Divider();
      },
      itemCount: 20,
    );
  }
}
