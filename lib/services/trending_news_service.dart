import 'package:dio/dio.dart';
import 'package:news_app/utils/constants/api_constants.dart';

class TrendingNewsService {
  Dio dio = Dio();

  Future<Map<String, dynamic>> getTrendingNews() async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}/everything',
        queryParameters: {
          'q': 'trending',
          'sortBy': 'popularity',
          'country': 'eg',
          'apiKey': ApiConstants.apiKey,
        },
      );
      return response.data;
    } catch (e) {
      print(e.toString());
      return {};
    }
  }
}
