import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  CategoryItem({super.key, required this.index});
  final List<String> categories = [
    'Business',
    'General',
    'Health',
    'Science',
    'Sports',
    'Technology',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75.0,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        categories[index], // Use the index to get the appropriate category
        style: const TextStyle(
          color: AppColors.categorieTitleTextColor,
          fontSize: 13.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
