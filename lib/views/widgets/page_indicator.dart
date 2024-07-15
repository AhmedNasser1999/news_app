// page_indicator.dart

import 'package:flutter/material.dart';
import 'package:news_app/providers/carousel_provider.dart';
import 'package:news_app/utils/constants/colors.dart';
import 'package:provider/provider.dart';

class CustomPageIndicator extends StatelessWidget {
  const CustomPageIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final carouselProvider = Provider.of<CarouselProvider>(context);
    var currentIndex = carouselProvider.currentIndex;
    final pageCount = carouselProvider.pageCount;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        pageCount,
        (index) {
          bool isActive = currentIndex == index ||
              (currentIndex >= pageCount && index == 0);

          return Container(
            width: isActive ? 25.0 : 10.0,
            height: 10.0,
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              borderRadius: isActive ? BorderRadius.circular(10.0) : null,
              shape: isActive ? BoxShape.rectangle : BoxShape.circle,
              color: isActive
                  ? AppColors.primaryColor
                  : Colors.grey.withOpacity(0.3), // Ensure valid opacity
            ),
          );
        },
      ),
    );
  }
}
