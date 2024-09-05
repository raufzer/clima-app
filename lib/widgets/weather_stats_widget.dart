import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meteoplus_app/models/weather_models.dart';

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
            // SvgPicture.asset(
            //   'assets/images/partly_cloudy.svg',
            //   width: 135,
            //   height: 130,
            // ),
            Container(
              margin: const EdgeInsets.only(left: 25).r,
              child: Image.asset(
                'assets/images/partly_cloudy.png',
                width: 135.0.r,
                height: 130.0.r,
              ),
            ),
            SizedBox(width: 20.0.r),
            Container(
              margin: const EdgeInsets.only(right: 25).r,
              child: FittedBox(
                child: Text(
                  '${weatherModel.avergeTemp}°',
                  style: GoogleFonts.poppins(
                    fontSize: 100.0.r,
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(right: 58.0.r, left: 58.0.r),
              child: Text(
                '${weatherModel.weatherState} - H:${weatherModel.maxTemp}° L:${weatherModel.minTemp}°',
                style: GoogleFonts.poppins(
                  fontSize: 14.0.r,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
