import 'package:flutter/material.dart';
import 'package:news_app/views/pages/news/breaking_news.dart';
import 'package:news_app/views/pages/news/trending_news.dart';
import 'package:news_app/views/widgets/page_indicator.dart';
import 'package:news_app/views/widgets/title_news_banner.dart';

class NewsHomeCategory extends StatelessWidget {
  const NewsHomeCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          //-----------------------------------
          const TitleNewsBanner(titleText: 'Braking News 🚨'),
          const SizedBox(height: 8.0),
          BrakingNews(),
          const SizedBox(height: 8.0),
          const CustomPageIndicator(),
          const SizedBox(height: 8.0),
          //-----------------------------------
          const TitleNewsBanner(titleText: 'Trending News 📈'),
          const SizedBox(height: 8.0),
          const Expanded(child: TrandingNews())
        ],
      ),
    );
  }
}
