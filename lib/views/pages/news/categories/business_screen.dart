import 'package:flutter/material.dart';
import 'package:news_app/views/widgets/news_category_item_widget.dart';

class Business extends StatelessWidget {
  const Business({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) => const NewsCategoryItem(),
      separatorBuilder: (BuildContext context, int index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Divider(
            thickness: 2.0,
          ),
        );
      },
      itemCount: 20,
    );
  }
}
