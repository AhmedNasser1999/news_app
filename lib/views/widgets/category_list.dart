import 'package:flutter/material.dart';
import 'package:news_app/providers/categories_provider.dart';
import 'package:news_app/views/widgets/category_item.dart';
import 'package:provider/provider.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: Provider.of<CategoriesProvider>(context).categoryItemCount,
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(width: 8.0),
        itemBuilder: (BuildContext context, int index) {
          return CategoryItem(index: index);
        },
      ),
    );
  }
}
