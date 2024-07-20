import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  final int current = 0;
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
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 75.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: current == index ? AppColors.primaryColor : Colors.white, //==>
          borderRadius: BorderRadius.circular(10.0),
          border: current == index
              ? null
              : Border.all(
                  color: AppColors.primaryColor,
                  width: 2.0,
                ),
        ),
        child: Text(
          categories[index],
          style: TextStyle(
            color: current == index
                ? AppColors.categorieTitleTextColor
                : Colors.black, //==>
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
