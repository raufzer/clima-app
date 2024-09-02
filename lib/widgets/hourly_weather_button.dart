import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meteoplus_app/utils/gradient_button_colors.dart';
import 'package:gradient_borders/gradient_borders.dart';

class HourlyWeatherButton extends StatelessWidget {
  final bool currentTime;

  const HourlyWeatherButton({super.key, required this.currentTime});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Container(
            height: 165,
            width: 65,
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                ),
                const SizedBox(
                  height: 8,
                ),
                Image.asset(
                  'assets/images/partly_cloudy.png',
                  width: 48,
                  height: 48,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '14°',
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          if (currentTime)
            Positioned(
              bottom: 0,
              left: (65 - 10) / 2,
              child: Container(
                width: 10.0,
                height: 10.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
              ),
            ),
        ],
      ),
    );
  }
}
