import 'package:flutter/material.dart';
import 'package:clima_app/models/hourly_weather_model.dart';
import 'package:clima_app/widgets/weather_hourly_button.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WeatherHourlyView extends StatelessWidget {
  final List<HourlyWeatherModel> hourlyWeatherList;
  const WeatherHourlyView({super.key, required this.hourlyWeatherList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          SizedBox(
            width: 12.0.r,
          ),
          ...List.generate(hourlyWeatherList.length, (index) {
            return Row(
              children: [
                WeatherHourlyButton(
                  weatherHourlyModel: hourlyWeatherList[index],
                ),
                if (index != hourlyWeatherList.length - 1)
                  SizedBox(
                    width: 12.0.r,
                  ),
              ],
            );
          }),
          SizedBox(
            width: 12.0.r,
          ),
        ],
      ),
    );
  }
}
