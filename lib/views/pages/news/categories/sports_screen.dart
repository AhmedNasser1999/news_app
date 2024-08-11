import 'package:flutter/material.dart';
import 'package:news_app/providers/categories_provider.dart';
import 'package:news_app/views/widgets/news_category_item_widget.dart';
import 'package:provider/provider.dart';

class Sports extends StatelessWidget {
  const Sports({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CategoriesProvider>(context);
    final articles = provider.sports?.articles;
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => NewsCategoryItem(
        title: articles![index].title!,
        date: provider.formatDate(articles[index].publishedAt!),
        author: articles[index].author!,
        photo: 'assets/images/1.jpeg',
      ),
      separatorBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Divider(
            thickness: 2.0,
          ),
        );
      },
      itemCount: provider.sports?.articles?.length ?? 0,
    );
  }
}
