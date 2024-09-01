import 'package:flutter/material.dart';
import 'package:meteoplus_app/widgets/hourly_weather_button.dart';


class HourlyWeatherView extends StatelessWidget {
  const HourlyWeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [HourlyWeatherButton()],
    );
  }
}
