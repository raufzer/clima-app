import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meteoplus_app/utils/gradient_button_colors.dart';
import 'package:gradient_borders/gradient_borders.dart';

class HourlyWeatherButton extends StatelessWidget {
  const HourlyWeatherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          height: 147,
          width: 65,
          padding:
              const EdgeInsets.only(right: 32, left: 32, top: 12, bottom: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: gradientButtonColors,
            border: GradientBoxBorder(
              gradient: gradientButtonColorsInverse,
              width: 2,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '4',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              Text(
                'PM',
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
