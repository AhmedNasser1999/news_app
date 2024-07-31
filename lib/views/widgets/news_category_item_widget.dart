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
        height: 250,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                'assets/images/1.jpeg',
                fit: BoxFit.cover,
                width: double.infinity,
                height: 160,
              ),
            ),
            const SizedBox(height: 8.0),
            const Flexible(
              child: Text(
                'This is a very long text that will be truncated after three lines. '
                'This text is meant to demonstrate how you can use the Text widget in Flutter '
                'to show only a limited number of lines and display an ellipsis at the end if the text overflows. '
                'to show only a limited number of lines and display an ellipsis at the end if the text overflows.',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            const SizedBox(height: 4.0), // Add spacing between text elements
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
