import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meteoplus_app/models/weather_models.dart';
import 'package:meteoplus_app/utils/weather_icon_selector.dart';

class WeatherStats extends StatelessWidget {
  const WeatherStats({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10.0.r),
            weatherIconSelctor(weatherModel.weatherState, 135, 130),
            Text(
              '${weatherModel.avergeTemp}°',
              style: GoogleFonts.poppins(
                fontSize: 90.0.r,
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10.0.r),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 10.0.r),
            Text(
              '${weatherModel.weatherState} - H:${weatherModel.maxTemp}° L:${weatherModel.minTemp}°',
              style: GoogleFonts.poppins(
                fontSize: 14.0.r,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 10.0.r),
          ],
        ),
      ],
    );
  }
}
