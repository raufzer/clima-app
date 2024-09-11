import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:clima_app/models/hourly_weather_model.dart';
import 'package:clima_app/models/weather_models.dart';

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

  Future<List<HourlyWeatherModel>> getHourlyWeather() async {
    try {
      Response res = await dio.get(
        baseUrl!,
        queryParameters: {
          'key': apiKey,
          'q': 'Algiers',
          'days': 1,
          'aqi': 'no',
          'alerts': 'no',
        },
      );

      Map<String, dynamic> data = res.data;

      if (data['forecast'] != null &&
          data['forecast']['forecastday'] != null &&
          data['forecast']['forecastday'].isNotEmpty) {
        List<dynamic> weather = data['forecast']['forecastday'][0]['hour'];

        List<HourlyWeatherModel> hourlyWeatherList = [];

        for (var hourlyWeather in weather) {
          hourlyWeatherList.add(HourlyWeatherModel.fromJson(hourlyWeather));
        }

        return hourlyWeatherList;
      } else {
        throw Exception('Weather data not available');
      }
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