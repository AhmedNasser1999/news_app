import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';
import 'package:news_app/views/pages/news/categories_list.dart';
import 'package:news_app/views/pages/news/categories_page_view.dart';
import 'package:news_app/views/widgets/custom_app_bar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              CustomAppBar(),
              SizedBox(height: 8.0),
              Categories(),
              SizedBox(height: 8.0),
              CategoriesPages(),
            ],
          ),
        ),
      ),
    );
  }
}
