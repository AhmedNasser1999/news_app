import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app/providers/braking_news_provider.dart';
import 'package:news_app/views/widgets/braking_news_item.dart';
import 'package:provider/provider.dart';

class BrakingNews extends StatelessWidget {
  final List<BreakingNewsItem> brakingNewsItems = [
    const BreakingNewsItem(),
    const BreakingNewsItem(),
    const BreakingNewsItem(),
    const BreakingNewsItem(),
    const BreakingNewsItem(),
  ];
  BrakingNews({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: brakingNewsItems.length,
      itemBuilder: (BuildContext context, int index, int realIndex) =>
          brakingNewsItems[index],
      options: CarouselOptions(
        height: 150.0,
        enlargeCenterPage: true,
        autoPlay: true,
        aspectRatio: 2.0,
        onPageChanged: (index, reson) =>
            Provider.of<BrakingNewsProvider>(context, listen: false)
                .setIndex(index),
      ),
    );
  }
}
