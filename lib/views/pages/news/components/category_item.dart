import 'package:flutter/material.dart';
import 'package:news_app/providers/categories_provider.dart';
import 'package:news_app/utils/constants/colors.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatelessWidget {
  final int index;

  CategoryItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final int current = Provider.of<CategoriesProvider>(context).current;
    return GestureDetector(
      onTap: () {
        Provider.of<CategoriesProvider>(context, listen: false)
            .setCurrentCategory(index);
      },
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
          Provider.of<CategoriesProvider>(context).categories[index],
          style: TextStyle(
            color: current == index
                ? AppColors.categorieTitleTextColor
                : Colors.black,
            fontSize: 13.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
