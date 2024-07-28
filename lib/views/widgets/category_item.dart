import 'package:flutter/cupertino.dart';
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
    final String categoryName = categoriesProvider.categories[index];

    return GestureDetector(
      onTap: () {
        categoriesProvider.setCurrentCategory(index);
        categoriesProvider.pageController.jumpToPage(index);
      },
      child: isHomeCategory
          ? Icon(
              size: 33.0,
              current == index
                  ? CupertinoIcons.house_fill
                  : CupertinoIcons.home,
              color: AppColors.primaryColor,
            )
          : Container(
              width: categoryName.length >= 10 ? 115 : 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: current == index ? AppColors.primaryColor : Colors.white,
                borderRadius: BorderRadius.circular(40.0),
                border: current == index
                    ? null
                    : Border.all(
                        color: AppColors.primaryColor,
                        width: 2.0,
                      ),
              ),
              child: Text(
                categoryName,
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
