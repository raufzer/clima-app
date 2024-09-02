import 'package:flutter/material.dart';
import 'package:meteoplus_app/widgets/hourly_weather_button.dart';

class HourlyWeatherView extends StatelessWidget {
  const HourlyWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        SizedBox(
          width: 12,
        ),
        HourlyWeatherButton(
          currentTime: true,
        ),
        SizedBox(
          width: 12,
        ),
        HourlyWeatherButton(
          currentTime: false,
        ),
        SizedBox(
          width: 12,
        ),
        HourlyWeatherButton(
          currentTime: false,
        ),
        SizedBox(
          width: 12,
        ),
        HourlyWeatherButton(
          currentTime: false,
        ),
        SizedBox(
          width: 12,
        ),
        HourlyWeatherButton(
          currentTime: false,
        ),
      ]),
    );
  }
}
