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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: NewsHomeCategory(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0, bottom: 9.0),
              child: Business(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0, bottom: 9.0),
              child: Entertainment(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0, bottom: 9.0),
              child: General(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0, bottom: 9.0),
              child: Health(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0, bottom: 9.0),
              child: Science(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0, bottom: 9.0),
              child: Sports(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 9.0, right: 9.0, bottom: 9.0),
              child: Technology(),
            ),
          ],
        ),
      ),
    );
  }
}
