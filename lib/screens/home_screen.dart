import 'package:flutter/material.dart';
import 'package:meteoplus_app/utils/gradient__primary_colors.dart';
import 'package:meteoplus_app/widgets/city_title_widget.dart';
import 'package:meteoplus_app/widgets/current_location_widget.dart';
import 'package:meteoplus_app/widgets/up_arrow_button.dart';
import 'package:meteoplus_app/widgets/upward_slider.dart';
import 'package:meteoplus_app/widgets/weather_hourly_list_view.dart';
import 'package:meteoplus_app/widgets/time_selector_widget.dart';
import 'package:meteoplus_app/widgets/weather_stats_widget.dart';
import 'package:scaffold_gradient_background/scaffold_gradient_background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldGradientBackground(
      gradient: gradientPrimaryColors,
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
          ),
          CityTitle(),
          CurrentLocation(),
          SizedBox(
            height: 20,
          ),
          WeatherStats(),
          SizedBox(
            height: 18,
          ),
          TimeSelector(),
          SizedBox(
            height: 20,
          ),
          WeatherHourlyView(),
          CurvedContainer(
            child: Center(
              child: Stack(
                children: [
                  Text(
                    'Hello, World!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  UpArrowButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
