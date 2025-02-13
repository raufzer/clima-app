import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:clima_app/models/weather_models.dart';
import 'package:clima_app/services/weather_service.dart';
import 'package:clima_app/widgets/weather_stats_widget.dart';

class WeatherStatsBuilder extends StatefulWidget {
  const WeatherStatsBuilder({
    super.key,
  });

  @override
  State<WeatherStatsBuilder> createState() => _WeatherStatsBuilderState();
}

class _WeatherStatsBuilderState extends State<WeatherStatsBuilder> {
  // ignore: prefer_typing_uninitialized_variables
  var weatherStats;
  @override
  void initState() {
    super.initState();
    weatherStats =
        WeatherService(dio: Dio()).getCurrentWeather(cityName: 'Algiers');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WeatherModel>(
        future: weatherStats,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return WeatherStats(
              weatherModel: snapshot.data!,
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
        });
  }
}
