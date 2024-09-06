import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:meteoplus_app/models/weather_models.dart';

class WeatherService {
  String apiKey = dotenv.env['API_KEY']!;
  final baseUrl = dotenv.env['API_URL'];
  final Dio dio;

  WeatherService({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response res = await dio.get(
        baseUrl!,
        queryParameters: {
          'key': apiKey,
          'days': 1,
          'q': cityName,
          'aqi': 'no',
          'alerts': 'no',
        },
      );

      Map<String, dynamic> data = res.data;
      WeatherModel weatherModel = WeatherModel.fromJson(data);
      return (weatherModel);
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'An error occurred';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('An error occurred');
    }
  }
}