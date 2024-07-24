import 'package:flutter/material.dart';

class CategoriesProvider with ChangeNotifier {
  int _current = 0;
  final int categoryItemCount = 8;
  final List<String> categories = [
    '/',
    'Business',
    'entertainment',
    'General',
    'Health',
    'Science',
    'Sports',
    'Technology',
  ];

  int get current => _current;

  void setCurrentCategory(int index) {
    _current = index;
    notifyListeners();
  }
}
