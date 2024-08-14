import 'package:flutter/material.dart';
import 'package:news_app/models/business_model.dart';
import 'package:news_app/models/entertainment_model.dart';
import 'package:news_app/models/general_model.dart';
import 'package:news_app/models/health_model.dart';
import 'package:news_app/models/science_model.dart';
import 'package:news_app/models/sports_model.dart';
import 'package:news_app/models/technology_model.dart';
import 'package:news_app/services/categories_service.dart';
import 'package:news_app/utils/helpers/news_helper.dart';

class CategoriesProvider with ChangeNotifier {
  // Current selected category index
  int _current = 0;

  // Current scroll offset
  double offset = 0;

  // Controllers for managing page and list view scrolling
  final PageController _pageController = PageController();
  final ScrollController listViewController = ScrollController();

  // Number of category items to be displayed
  final int categoryItemCount = 8;

  // List of available categories
  final List<String> categoriesList = [
    '/',
    'Business',
    'Entertainment',
    'General',
    'Health',
    'Science',
    'Sports',
    'Technology',
  ];

  // Service instance to fetch category data
  final CategoriesService _service = CategoriesService();

  // Private variables for category data and loading state
  BusinessModel? _business;
  EntertainmentModel? _entertainment;
  GeneralModel? _general;
  HealthModel? _health;
  ScienceModel? _science;
  SportsModel? _sports;
  TechonolgyModel? _techonolgy;
  bool _isLoading = false;

  // Getters to expose private variables
  int get current => _current;
  bool get isLoading => _isLoading;
  PageController get pageController => _pageController;
  BusinessModel? get business => _business;
  EntertainmentModel? get entertainment => _entertainment;
  GeneralModel? get general => _general;
  HealthModel? get health => _health;
  ScienceModel? get science => _science;
  SportsModel? get sports => _sports;
  TechonolgyModel? get techonolgy => _techonolgy;

  // Methods to fetch categories
  Future<void> fetchCategoryBusiness() async {
    _setLoading(true);
    _business = await _service.getCategoryBusiness();
    _setLoading(false);
  }

  Future<void> fetchCategoryEntertainment() async {
    _setLoading(true);
    _entertainment = await _service.getCategoryEntertainment();
    _setLoading(false);
  }

  Future<void> fetchCategoryGeneral() async {
    _setLoading(true);
    _general = await _service.getCategoryGeneral();
    _setLoading(false);
  }

  Future<void> fetchCategoryHealth() async {
    _setLoading(true);
    _health = await _service.getCategoryHealth();
    _setLoading(false);
  }

  Future<void> fetchCategoryScience() async {
    _setLoading(true);
    _science = await _service.getCategoryScience();
    _setLoading(false);
  }

  Future<void> fetchCategorySports() async {
    _setLoading(true);
    _sports = await _service.getCategorySports();
    _setLoading(false);
  }

  Future<void> fetchCategoryTechnology() async {
    _setLoading(true);
    _techonolgy = await _service.getCategoryTechnology();
    _setLoading(false);
  }

  // Method to set the current category index and update the page view
  void setCurrentCategory(int index) {
    _current = index;
    _pageController.jumpToPage(index);
    notifyListeners();
  }

  // Method to synchronize scroll offset with the list view
  void syncScroll(double offset) {
    listViewController.jumpTo(offset);
    notifyListeners();
  }

  // Method to animate to a specific category in the list view
  void animateToCategory(int index) {
    double offset = _calculateOffset(index);
    listViewController.animateTo(
      offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  // Private method to calculate the offset based on the width of previous categories
  double _calculateOffset(int index) {
    double offset = 0;
    for (int i = 0; i < index; i++) {
      offset += _calculateCategoryWidth(categoriesList[i], i);
    }
    offset += 8.0 * index;
    return offset;
  }

  // Private method to calculate the width of a category item based on its name
  double _calculateCategoryWidth(String categoryName, int index) {
    if (index == 0) {
      return 33.0;
    } else if (categoryName.length >= 10) {
      return 115.0;
    } else {
      return 70.0;
    }
  }

  // Private method to set loading state
  void _setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  // Function to format date
  String formatDate(String date) {
    return NewsHelper.formatDate(date);
  }
}
