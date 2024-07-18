import 'package:dio/dio.dart';
import 'package:news_app/utils/constants/api_constants.dart';

class CategoriesService {
  late BaseOptions options;
  late Dio dio;
  String? categoryName;
  String endPoint = '/top-headlines';

  CategoriesService({required this.categoryName}) {
    options = BaseOptions(
      baseUrl: ApiConstants.baseUrl,
      queryParameters: {
        'apiKey': ApiConstants.apiKey,
        'country': 'eg',
        'category': categoryName,
      },
    );
    dio = Dio(options);
  }

  Future<Response> getTopHeadlines() async {
    try {
      Response response = await dio.get(endPoint);

      return response;
    } catch (e) {
      rethrow;
    }
  }
}
