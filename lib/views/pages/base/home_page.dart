import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';
import 'package:news_app/views/pages/news/breaking_news.dart';
import 'package:news_app/views/pages/news/category_list.dart';
import 'package:news_app/views/pages/news/trending_news.dart';
import 'package:news_app/views/widgets/title_news_banner.dart';
import 'package:news_app/views/widgets/custom_app_bar.dart';
import 'package:news_app/views/widgets/page_indicator.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CustomAppBar(),
              const SizedBox(height: 5.0),
              TitleNewsBanner(
                titleText: 'Categories 📂',
                onButtonPressed: () {},
              ),
              const SizedBox(height: 8.0),
              const CategoryList(),
              TitleNewsBanner(
                titleText: 'Braking News 🚨',
                onButtonPressed: () {},
              ),
              const SizedBox(height: 8.0),
              BrakingNews(),
              const SizedBox(height: 8.0),
              const CustomPageIndicator(),
              TitleNewsBanner(
                titleText: 'Trending News 📈',
                onButtonPressed: () {},
              ),
              const SizedBox(height: 8.0),
              const TrandingNews()
            ],
          ),
        ),
      ),
    );
  }
}
