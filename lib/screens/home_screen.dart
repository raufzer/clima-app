import 'package:clima_app/cubits/get_hourly_weather_cubit/get_hourly_weather_cubit.dart';
import 'package:clima_app/cubits/get_hourly_weather_cubit/get_hourly_weather_states.dart';
import 'package:clima_app/widgets/weather_hourly_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:clima_app/utils/gradient__primary_colors.dart';
import 'package:clima_app/widgets/city_title_widget.dart';
import 'package:clima_app/widgets/current_location_widget.dart';
import 'package:clima_app/widgets/slider_widget.dart';
import 'package:clima_app/widgets/time_selector_widget.dart';
import 'package:clima_app/widgets/weather_stats_widget_builder.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();

    BlocProvider.of<GetHourlyWeatherCubit>(context).getHourlyWeather();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: gradientPrimaryColors,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 53.0.r,
          ),
          const CityTitle(),
          const CurrentLocation(),
          SizedBox(
            height: 16.0.r,
          ),
          const WeatherStatsBuilder(),
          SizedBox(
            height: 18.0.r,
          ),
          const TimeSelector(),
          SizedBox(
            height: 20.0.r,
          ),
          BlocBuilder<GetHourlyWeatherCubit, WeatherState>(
              builder: (context, state) {
            if (state is WeatherInitialState) {
              return const CircularProgressIndicator();
            } else if (state is WeatherHourlyLoadedState) {
              return WeatherHourlyView(
                  hourlyWeatherList: state.weatherHourlyList);
            } else {
              return const Text('There is an error');
            }
          }),
          const SliderWidget(),
        ],
      ),
    );
  }
}
