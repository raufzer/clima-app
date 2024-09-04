import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:meteoplus_app/models/weather_models.dart';

class WeatherService {
  String apiKey = dotenv.env['API_KEY']!;
  final Dio dio;
  final baseUrl = dotenv.env['API_URL'];

  WeatherService({required this.dio});

  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response res = await dio.get(
        baseUrl!,
        queryParameters: {
          'days': 1,
          'key': apiKey,
          'q': cityName,
          'aqi': 'no',
          'alerts': 'no',
        },
      );
      Map<String, dynamic> data = res.data;
      WeatherModel weatherModel = WeatherModel.fromJson(data);
      return (weatherModel);
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['error']['message'];
      throw Exception(errorMessage);
    }
  }
}
