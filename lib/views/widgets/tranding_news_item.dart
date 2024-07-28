import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class TrendingNewsItem extends StatelessWidget {
  const TrendingNewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: SizedBox(
              width: 90.0,
              height: 90.0,
              child: Image.asset(
                'assets/images/1.jpeg',
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.image_not_supported,
                    size: 90.0,
                  );
                },
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: SizedBox(
              height: 90.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Sport',
                        style: TextStyle(
                          color: AppColors.trendingTextColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Image.asset(
                        'assets/images/CNN.png',
                        width: 30.0,
                        height: 15.0,
                      ),
                    ],
                  ),
                  const Expanded(
                    child: Text(
                      'This is a very long text that will be truncated after three lines. '
                      'This text is meant to demonstrate how you can use the Text widget in Flutter '
                      'to show only a limited number of lines and display an ellipsis at the end if the text overflows. '
                      'to show only a limited number of lines and display an ellipsis at the end if the text overflows.',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Text(
                    'CNN • 8 minutes ago',
                    style: TextStyle(
                      color: AppColors.trendingTextColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
