import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meteoplus_app/utils/gradient__primary_colors.dart';
import 'package:meteoplus_app/widgets/city_title_widget.dart';
import 'package:meteoplus_app/widgets/current_location_widget.dart';
import 'package:meteoplus_app/widgets/slider_widget.dart';
import 'package:meteoplus_app/widgets/weather_hourly_list_view.dart';
import 'package:meteoplus_app/widgets/time_selector_widget.dart';
import 'package:meteoplus_app/widgets/weather_stats_widget_builder.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          const WeatherHourlyView(),
          const SliderWidget(),
        ],
      ),
    );
  }
}
