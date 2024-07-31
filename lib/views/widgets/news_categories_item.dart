import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class NewsCategoryItem extends StatelessWidget {
  const NewsCategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
        width: double.infinity,
        height: 280,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/images/1.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            const Expanded(
              child: Text(
                'This is a very long text that will be truncated after three lines. '
                'This text is meant to demonstrate how you can use the Text widget in Flutter '
                'to show only a limited number of lines and display an ellipsis at the end if the text overflows. '
                'to show only a limited number of lines and display an ellipsis at the end if the text overflows.',
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            const Text(
              'CNN • 8 minutes ago',
              style: TextStyle(
                color: AppColors.trendingTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
