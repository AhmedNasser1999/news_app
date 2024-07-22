import 'package:dio/dio.dart';
import 'package:news_app/utils/constants/api_constants.dart';

class BrakingNewsService {
  Dio dio = Dio();
  Future<Map<String, dynamic>> getBrakingNews() async {
    try {
      final response = await dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
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
