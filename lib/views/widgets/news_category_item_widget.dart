import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class NewsCategoryItem extends StatelessWidget {
  final String title;
  final String photo;
  final String date;
  final String author;

  const NewsCategoryItem({
    super.key,
    required this.title,
    required this.photo,
    required this.date,
    required this.author,
  });

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
            const SizedBox(height: 8.0),
            ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                photo,
                fit: BoxFit.cover,
                width: double.infinity,
                height: 160,
              ),
            ),
            const SizedBox(height: 8.0),
            Expanded(
              child: Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            const SizedBox(height: 5.0),
            Text(
              '$date | $author',
              style: const TextStyle(
                color: AppColors.trendingTextColor,
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
