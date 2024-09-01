import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WeatherStats extends StatelessWidget {
  const WeatherStats({super.key});

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
              margin: const EdgeInsets.only(left: 25),
              child: Image.asset(
                'assets/images/partly_cloudy.png',
                width: 135,
                height: 130,
              ),
            ),
            const SizedBox(width: 20),
            Container(
              margin: const EdgeInsets.only(right: 25),
              child: FittedBox(
                child: Text(
                  '14°',
                  style: GoogleFonts.poppins(
                    fontSize: 105,
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
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(right: 58, left: 58),
                child: Text(
                  'Partly Cloud  -  H:17°  L:4°',
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
