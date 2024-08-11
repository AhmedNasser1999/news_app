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
  int _current = 0; // Current selected category index
  double offset = 0; // Current scroll offset

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

  // Indicates if the data is currently being fetched
  bool _isLoading = false;

  // Getters to expose private variables
  int get current => _current;
  //--------------------------------
  BusinessModel? get business => _business;
  EntertainmentModel? get entertainment => _entertainment;
  GeneralModel? get general => _general;
  HealthModel? get health => _health;
  ScienceModel? get science => _science;
  SportsModel? get sports => _sports;
  TechonolgyModel? get techonolgy => _techonolgy;
  //-----------------------------------------
  bool get isLoading => _isLoading;
  PageController get pageController => _pageController;

  // Methods to fetch categories
  Future<void> fetchCategoryBusiness() async {
    _isLoading = true;
    notifyListeners();

    // Fetch categories from the service
    _business = await _service.getCategoryBusiness();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCategoryEntertainment() async {
    _isLoading = true;
    notifyListeners();

    // Fetch categories from the service
    _entertainment = await _service.getCategoryEntertainment();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCategoryGeneral() async {
    _isLoading = true;
    notifyListeners();

    // Fetch categories from the service
    _general = await _service.getCategoryGeneral();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCategoryScience() async {
    _isLoading = true;
    notifyListeners();

    // Fetch categories from the service
    _science = await _service.getCategoryScience();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCategorySports() async {
    _isLoading = true;
    notifyListeners();

    // Fetch categories from the service
    _sports = await _service.getCategorySports();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCategoryTechnology() async {
    _isLoading = true;
    notifyListeners();

    // Fetch categories from the service
    _techonolgy = await _service.getCategoryTechnology();

    _isLoading = false;
    notifyListeners();
  }

  Future<void> fetchCategoryHealth() async {
    _isLoading = true;
    notifyListeners();

    // Fetch categories from the service
    _health = await _service.getCategoryHealth();

    _isLoading = false;
    notifyListeners();
  }

  // Method to set the current category index and update the page view
  void setCurrentCategory(int index) {
    _current = index; // Update the current category index
    _pageController.jumpToPage(index); // Jump to the selected page
    notifyListeners();
  }

  // Method to synchronize scroll offset with the list view
  void syncScroll(double offset) {
    listViewController.jumpTo(offset); // Sync the scroll offset
    notifyListeners();
  }

  // Method to animate to a specific category in the list view
  void animateToCategory(int index) {
    double offset = 0;

    // Calculate the offset based on the width of previous categories
    for (int i = 0; i < index; i++) {
      final String name = categoriesList[i];
      final double width = _calculateCategoryWidth(name, i);
      offset += width;
    }
    offset += 8.0 * index; // Add space between items

    // Animate to the calculated offset
    listViewController.animateTo(
      offset,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  // Private method to calculate the width of a category item based on its name
  double _calculateCategoryWidth(String categoryName, int index) {
    if (index == 0) {
      return 33.0; // Width for the first category
    } else if (categoryName.length >= 10) {
      return 115.0; // Width for longer category names
    } else {
      return 70.0; // Default width for other categories
    }
  }

//Function to fromat date
  String formatDate(String date) {
    return NewsHelper.formatDate(date);
  }
}
