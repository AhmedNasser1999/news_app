import 'package:flutter/material.dart';
import 'package:news_app/providers/categories_provider.dart';
import 'package:news_app/views/pages/news/categories/business_screen.dart';
import 'package:news_app/views/pages/news/categories/entertainment_screen.dart';
import 'package:news_app/views/pages/news/categories/general_news_screen.dart';
import 'package:news_app/views/pages/news/categories/health_screen.dart';
import 'package:news_app/views/pages/news/categories/news_home.dart';
import 'package:news_app/views/pages/news/categories/science_screen.dart';
import 'package:news_app/views/pages/news/categories/sports_screen.dart';
import 'package:news_app/views/pages/news/categories/technology_screen.dart';
import 'package:provider/provider.dart';

class CategoriesPages extends StatelessWidget {
  const CategoriesPages({super.key});

  @override
  Widget build(BuildContext context) {
    CategoriesProvider categoriesProvider =
        Provider.of<CategoriesProvider>(context);
    return Expanded(
      child: SizedBox(
        width: double.infinity,
        child: PageView(
          controller: categoriesProvider.pageController,
          onPageChanged: (index) {
            categoriesProvider.setCurrentCategory(index);
            categoriesProvider.animateToCategory(index);
          },
          children: const [
            NewsHomeCategory(),
            Business(),
            Entertainment(),
            General(),
            Health(),
            Science(),
            Sports(),
            Technology(),
          ],
        ),
      ),
    );
  }
}
