import 'package:flutter/material.dart';
import 'package:news_app/views/pages/news/components/category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 8.0),
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(index: index);
        },
      ),
    );
  }
}
