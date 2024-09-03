import 'package:flutter/material.dart';
import 'package:meteoplus_app/widgets/weather_hourly_button.dart';

class WeatherHourlyView extends StatelessWidget {
  const WeatherHourlyView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        SizedBox(
          width: 12,
        ),
        WeatherHourlyButton(
          currentTime: true,
        ),
        SizedBox(
          width: 12,
        ),
        WeatherHourlyButton(
          currentTime: false,
        ),
        SizedBox(
          width: 12,
        ),
        WeatherHourlyButton(
          currentTime: false,
        ),
        SizedBox(
          width: 12,
        ),
        WeatherHourlyButton(
          currentTime: false,
        ),
        SizedBox(
          width: 12,
        ),
        WeatherHourlyButton(
          currentTime: false,
        ),
      ]),
    );
  }
}
