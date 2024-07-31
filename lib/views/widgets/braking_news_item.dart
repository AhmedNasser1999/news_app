import 'package:flutter/material.dart';
import 'package:news_app/utils/constants/colors.dart';

class BreakingNewsItem extends StatelessWidget {
  const BreakingNewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: SizedBox(
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
            ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Container(
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Positioned(
              top: 10.0,
              left: 10.0,
              child: Container(
                width: 60.0,
                height: 30.0,
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40.0),
                  color: Colors.white,
                ),
                child: Image.asset(
                  'assets/images/CNN.png',
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
      ),
    );
  }
}
