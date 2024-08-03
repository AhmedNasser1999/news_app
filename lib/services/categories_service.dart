import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:news_app/models/categories_model.dart';
import 'package:news_app/utils/constants/api_constants.dart';

class CategoriesService {
  final Dio _dio = Dio();

  Future<CategoriesModel?> getCategories({required String categoryName}) async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': categoryName,
          'apiKey': ApiConstants.apiKey,
          'country': 'eg',
        },
      );
      return CategoriesModel.fromJson(response.data);
    } catch (e) {
      log('Error getting categories: $e');
      return null;
    }
  }
}
