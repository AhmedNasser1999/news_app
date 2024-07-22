import 'package:flutter/material.dart';
import 'package:news_app/providers/categories_provider.dart';
import 'package:news_app/utils/constants/colors.dart';
import 'package:provider/provider.dart';

class CategoryItem extends StatelessWidget {
  final int index;

  const CategoryItem({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final categoriesProvider = Provider.of<CategoriesProvider>(context);
    final int current = categoriesProvider.current;
    final bool isHomeCategory = index == 0;

    return GestureDetector(
      onTap: () => categoriesProvider.setCurrentCategory(index),
      child: isHomeCategory
          ? GestureDetector(
              onTap: () => categoriesProvider.setCurrentCategory(index),
              child: Icon(
                size: 35.0,
                Icons.home,
                color: current == index ? AppColors.primaryColor : Colors.black,
              ),
            )
          : Container(
              width: 85.0,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: current == index ? AppColors.primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                border: current == index
                    ? null
                    : Border.all(
                        color: AppColors.primaryColor,
                        width: 2.0,
                      ),
              ),
              child: Text(
                categoriesProvider.categories[index],
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
