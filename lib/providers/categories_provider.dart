import 'package:flutter/material.dart';

class CategoriesProvider with ChangeNotifier {
  final PageController _pageController = PageController();
  final ScrollController listViewController = ScrollController();
  final int categoryItemCount = 8;
  int _current = 0;
  double offset = 0;

  final List<String> categories = [
    '/',
    'Business',
    'Entertainment',
    'General',
    'Health',
    'Science',
    'Sports',
    'Technology',
  ];

  int get current => _current;
  PageController get pageController => _pageController;

  void setCurrentCategory(int index) {
    _current = index;
    _pageController.jumpToPage(index);
    notifyListeners();
  }

  void syncScroll(double offset) {
    listViewController.jumpTo(offset);
    notifyListeners();
  }

  void animateToCategory(int index) {
    double offset = 0;
    for (int i = 0; i < index; i++) {
      final String name = categories[i];
      final double width = _calculateCategoryWidth(name, i);
      offset += width;
    }
    offset += 8.0 * index;

    listViewController.animateTo(
      offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  double _calculateCategoryWidth(String categoryName, int index) {
    if (index == 0) {
      return 33.0;
    } else if (categoryName.length >= 10) {
      return 115.0;
    } else {
      return 70.0;
    }
  }
}
