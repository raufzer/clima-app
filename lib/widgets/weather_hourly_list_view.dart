import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meteoplus_app/models/hourly_weather_model.dart';
import 'package:meteoplus_app/widgets/weather_hourly_button.dart';

class WeatherHourlyView extends StatelessWidget {
  final List<HourlyWeatherModel> hourlyWeatherList;
  const WeatherHourlyView({super.key, required this.hourlyWeatherList});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        ListView.builder(
          itemBuilder: (context, index) {
            return WeatherHourlyButton(
                weatherHourlyModel: hourlyWeatherList[index]);
          },
          itemCount: hourlyWeatherList.length,
          shrinkWrap: true,
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
        )
      ]),
    );
  }
}
