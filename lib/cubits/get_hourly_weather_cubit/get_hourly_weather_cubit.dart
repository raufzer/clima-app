import 'package:clima_app/cubits/get_hourly_weather_cubit/get_hourly_weather_states.dart';
import 'package:clima_app/models/hourly_weather_model.dart';
import 'package:clima_app/services/weather_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetHourlyWeatherCubit extends Cubit<WeatherState> {
  GetHourlyWeatherCubit(super.initialState);



  

  getHourlyWeather() async {
    try {
      List<HourlyWeatherModel> weatherHourlyList =
          await WeatherService(dio: Dio()).getHourlyWeather();
      emit(WeatherHourlyLoadedState());
    } catch (e) {
      emit(WeatherHoutlyFailureState());
    }
  }
}
