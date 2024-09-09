import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meteoplus_app/models/hourly_weather_model.dart';
import 'package:meteoplus_app/utils/gradient_button_colors.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:meteoplus_app/widgets/current_time_dot.dart';

class WeatherHourlyButton extends StatelessWidget {
  final HourlyWeatherModel weatherHourlyModel;

  const WeatherHourlyButton({super.key, required this.weatherHourlyModel});

  @override
  Widget build(BuildContext context) {
    final timeString = weatherHourlyModel.time;
    final amPm = timeString.substring(timeString.length - 2);
    final hour = int.parse(timeString.substring(0, timeString.length - 3));

    final now = DateTime.now();
    final currentHour =
        now.hour > 12 ? now.hour - 12 : (now.hour == 0 ? 12 : now.hour);
    final currentAmPm = now.hour < 12 ? "AM" : "PM";

    final isCurrentTime = (currentHour == hour && currentAmPm == amPm);

    return GestureDetector(
      onTap: () {},
      child: Column(children: [
        Container(
          height: 165.0.r,
          width: 65.0.r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: gradientButtonColors,
            border: GradientBoxBorder(
              gradient: gradientButtonColorsInverse,
              width: 2.0.r,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 16.0.r,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    hour.toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 16.0.r,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    amPm,
                    style: GoogleFonts.poppins(
                      fontSize: 12.0.r,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 8.0.r,
              ),
              Image.asset(
                'assets/images/partly_cloudy.png',
                width: 48.0.r,
                height: 48.0.r,
              ),
              SizedBox(
                height: 8.0.r,
              ),
              Text(
                '${weatherHourlyModel.temp}°',
                style: GoogleFonts.poppins(
                  fontSize: 18.0.r,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 16.0.r,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8.0.r,
        ),
        if (isCurrentTime) const CurrentTimeDot(isHighlighted: true),
      ]),
    );
  }
}
