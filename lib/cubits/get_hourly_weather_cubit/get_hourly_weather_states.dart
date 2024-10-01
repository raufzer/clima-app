import 'package:clima_app/models/hourly_weather_model.dart';

class WeatherState {}

class InitialState extends WeatherState {}

class WeatherHourlyLoadedState extends WeatherState {
  final List<HourlyWeatherModel> weatherHourlyList;

  WeatherHourlyLoadedState({required this.weatherHourlyList});
}

class WeatherHourlyUpdateState extends WeatherState {}

class WeatherHoutlyFailureState extends WeatherState {}
