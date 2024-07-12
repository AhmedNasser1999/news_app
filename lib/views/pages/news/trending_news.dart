import 'package:flutter/material.dart';
import 'package:news_app/views/pages/news/components/tranding_news_item.dart';

class TrandingNews extends StatelessWidget {
  const TrandingNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 20,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: (BuildContext context, int index) =>
            const TrendingNewsItem(),
      ),
    );
  }
}
