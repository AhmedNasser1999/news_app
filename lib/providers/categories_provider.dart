import 'package:flutter/material.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/services/categories_service.dart';

class CategoriesProvider with ChangeNotifier {
  // Private variables for internal state management
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
  CategoriesModel? _categories; // Holds the fetched categories data
  bool _isLoading = false; // Indicates if the data is currently being fetched

  // Getters to expose private variables
  int get current => _current; // Getter for current selected category index
  CategoriesModel? get categories => _categories; // Getter for category data
  bool get isLoading => _isLoading; // Getter for loading state
  PageController get pageController =>
      _pageController; // Getter for page controller

  // Method to fetch categories based on the selected category name
  Future<void> fetchCategories(String categoryName) async {
    _isLoading = true; // Set loading state to true
    notifyListeners(); // Notify listeners to update UI

    // Fetch categories from the service
    _categories = await _service.getCategories(categoryName: categoryName);

    _isLoading = false; // Set loading state to false
    notifyListeners(); // Notify listeners to update UI
  }

  // Method to set the current category index and update the page view
  void setCurrentCategory(int index) {
    _current = index; // Update the current category index
    _pageController.jumpToPage(index); // Jump to the selected page
    notifyListeners(); // Notify listeners to update UI
  }

  // Method to synchronize scroll offset with the list view
  void syncScroll(double offset) {
    listViewController.jumpTo(offset); // Sync the scroll offset
    notifyListeners(); // Notify listeners to update UI
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
}
