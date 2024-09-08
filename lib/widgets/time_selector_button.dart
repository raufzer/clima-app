import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TimeSelectorButton extends StatelessWidget {
  const TimeSelectorButton(
      {super.key,
      required this.time,
      required this.color,
      required this.opactiy});
  final String time;
  final Color color;
  final double opactiy;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Container(
          padding:
              const EdgeInsets.only(right: 32, left: 32, top: 12, bottom: 12),
          color: color.withOpacity(opactiy),
          child: Text(
            time,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
