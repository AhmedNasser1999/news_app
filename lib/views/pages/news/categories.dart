import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/category_list.dart';
import 'package:news_app/views/widgets/title_news_banner.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TitleNewsBanner(titleText: 'Categories 📂'),
        SizedBox(height: 8.0),
        CategoryList(),
      ],
    );
  }
}
