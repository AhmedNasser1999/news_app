import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/trending_news_item_widget.dart';

class TrandingNews extends StatelessWidget {
  const TrandingNews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemCount: 20,
      separatorBuilder: (BuildContext context, int index) => const Divider(),
      itemBuilder: (BuildContext context, int index) =>
          const TrendingNewsItem(),
    );
  }
}
