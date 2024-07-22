import 'package:dio/dio.dart';
import 'package:news_app/utils/constants/api_constants.dart';

class CategoriesService {
  final Dio dio = Dio();
  Future<Map<String, dynamic>> getCategories(categoryName) async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': categoryName,
          'apiKey': ApiConstants.apiKey,
          'country': 'eg'
        },
      );
      return response.data;
    } catch (e) {
      print(e.toString());
      return {};
    }
  }
}
