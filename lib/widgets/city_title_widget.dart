import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CityTitle extends StatelessWidget {
  const CityTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Center(
        child: Text(
          'San Diego',
          style: GoogleFonts.poppins(
            fontSize: 32,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
