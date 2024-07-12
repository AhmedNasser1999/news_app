import 'package:flutter/material.dart';

class CarouselProvider with ChangeNotifier {
  int _currentIndex = 0;
  final int _pageCount = 5;

  int get currentIndex => _currentIndex;
  int get pageCount => _pageCount;
  void setIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }
}
