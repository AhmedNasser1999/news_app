import 'package:flutter/material.dart';

class CategoriesProvider with ChangeNotifier {
  int _current = 0;
  final PageController _pageController = PageController();
  final int categoryItemCount = 8;
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
    _pageController.jumpToPage(
      index,
    );
    notifyListeners();
  }
}
