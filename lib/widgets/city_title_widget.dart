import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CityTitle extends StatelessWidget {
  const CityTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60.0.r,
      child: Center(
        child: Text(
          'Algiers',
          style: GoogleFonts.poppins(
            fontSize: 32.0.r,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
