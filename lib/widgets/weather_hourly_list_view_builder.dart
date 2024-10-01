import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:clima_app/models/hourly_weather_model.dart';
import 'package:clima_app/services/weather_service.dart';
import 'package:clima_app/widgets/weather_hourly_list_view.dart';

class WeatherHourlyViewBuilder extends StatefulWidget {
  const WeatherHourlyViewBuilder({super.key});
  @override
  State<WeatherHourlyViewBuilder> createState() => _WeatherHourlyViewBuilderState();
}
// 
class _WeatherHourlyViewBuilderState extends State<WeatherHourlyViewBuilder> {
    // ignore: prefer_typing_uninitialized_variables
  var weatherHourlyList;
  @override
  void initState() {
    super.initState();

    weatherHourlyList =
        WeatherService(dio: Dio()).getHourlyWeather();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<HourlyWeatherModel>>(
      future: weatherHourlyList,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return WeatherHourlyView(
            hourlyWeatherList: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('An error occurred'),
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}