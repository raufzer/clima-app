import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
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
          const WeatherStats(),
          SizedBox(
            height: 18.0.r,
          ),
          const TimeSelector(),
          SizedBox(
            height: 20.0.r,
          ),
          const WeatherHourlyView(),
          CurvedContainer(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 64.0.r,
              ),
              const UpArrowButton(),
              SizedBox(
                height: 16.0.r,
              ),
              Text(
                'Swipe up for more details',
                style: GoogleFonts.poppins(
                  fontSize: 12.0.r,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
