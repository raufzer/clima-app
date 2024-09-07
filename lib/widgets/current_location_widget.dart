import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: unused_import
import 'package:meteoplus_app/utils/input_city_name.dart';
// import 'package:meteoplus_app/utils/get_long_lat_coordinates.dart';

class CurrentLocation extends StatefulWidget {
  const CurrentLocation({super.key});

  @override
  State<CurrentLocation> createState() => _CurrentLocationState();
}

class _CurrentLocationState extends State<CurrentLocation> {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/current_location.svg',
              width: 16.0.r,
              height: 16.0.r,
            ),
            SizedBox(
              width: 8.0.r,
            ),
            Text(
              'Current Location',
              style: GoogleFonts.poppins(
                fontSize: 12.0.r,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
