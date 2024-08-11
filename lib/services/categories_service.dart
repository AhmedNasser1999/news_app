import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:news_app/models/business_model.dart';
import 'package:news_app/models/entertainment_model.dart';
import 'package:news_app/models/general_model.dart';
import 'package:news_app/models/health_model.dart';
import 'package:news_app/models/science_model.dart';
import 'package:news_app/models/sports_model.dart';
import 'package:news_app/models/technology_model.dart';
import 'package:news_app/utils/constants/api_constants.dart';

class CategoriesService {
  final Dio _dio = Dio();
//Get Category Business :
  Future<BusinessModel?> getCategoryBusiness() async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': ApiConstants.categories['Business'],
          'apiKey': ApiConstants.apiKey,
          'country': 'eg',
        },
      );
      return BusinessModel.fromJson(response.data);
    } catch (e) {
      log('Error getting categories Business: $e');
      return null;
    }
  }

//Get Category Entertainment :
  Future<EntertainmentModel?> getCategoryEntertainment() async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': ApiConstants.categories['Entertainment'],
          'apiKey': ApiConstants.apiKey,
          'country': 'eg',
        },
      );
      return EntertainmentModel.fromJson(response.data);
    } catch (e) {
      log('Error getting categories Entertainment: $e');
      return null;
    }
  }

//Get Category General :
  Future<GeneralModel?> getCategoryGeneral() async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': ApiConstants.categories['General'],
          'apiKey': ApiConstants.apiKey,
          'country': 'eg',
        },
      );
      return GeneralModel.fromJson(response.data);
    } catch (e) {
      log('Error getting categories General: $e');
      return null;
    }
  }

//Get Category Health :
  Future<HealthModel?> getCategoryHealth() async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': ApiConstants.categories['Health'],
          'apiKey': ApiConstants.apiKey,
          'country': 'eg',
        },
      );
      return HealthModel.fromJson(response.data);
    } catch (e) {
      log('Error getting categories Health: $e');
      return null;
    }
  }

//Get Category Science :
  Future<ScienceModel?> getCategoryScience() async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': ApiConstants.categories['Science'],
          'apiKey': ApiConstants.apiKey,
          'country': 'eg',
        },
      );
      return ScienceModel.fromJson(response.data);
    } catch (e) {
      log('Error getting categories Science: $e');
      return null;
    }
  }

//Get Category Sports :
  Future<SportsModel?> getCategorySports() async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': ApiConstants.categories['Sports'],
          'apiKey': ApiConstants.apiKey,
          'country': 'eg',
        },
      );
      return SportsModel.fromJson(response.data);
    } catch (e) {
      log('Error getting categories Sports: $e');
      return null;
    }
  }

//Get Category Technology :
  Future<TechonolgyModel?> getCategoryTechnology() async {
    try {
      final response = await _dio.get(
        '${ApiConstants.baseUrl}/top-headlines',
        queryParameters: {
          'category': ApiConstants.categories['Technology'],
          'apiKey': ApiConstants.apiKey,
          'country': 'eg',
        },
      );
      return TechonolgyModel.fromJson(response.data);
    } catch (e) {
      log('Error getting categories Technology: $e');
      return null;
    }
  }
}
