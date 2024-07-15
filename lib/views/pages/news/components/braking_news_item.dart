import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class BreakingNewsItem extends StatelessWidget {
  const BreakingNewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(25.0),
            child: Image.asset(
              'assets/images/1.jpeg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 10.0,
            left: 10.0,
            child: Container(
              alignment: Alignment.center,
              width: 60,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40.0),
                color: AppColors.primaryColor,
              ),
              child: const Text(
                'Ahmed',
                style: TextStyle(
                  color: AppColors.brakingNewsTextColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CNN • 8 minutes ago',
                    style: TextStyle(
                      color: AppColors.brakingNewsTextColor,
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Ahmed Ahmed Ahmed Ahmed Ahmed',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: AppColors.brakingNewsTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
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
