import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meteoplus_app/widgets/up_arrow_button.dart';
import 'package:meteoplus_app/widgets/upward_slider.dart';

class SliderWidget extends StatelessWidget {
  const SliderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 64.0.r,
        ),
        const UpArrowButton(),
        SizedBox(
          height: 16.0.r,
        ),
        Text(
          'Swipe up for more details',
          style: GoogleFonts.poppins(
            fontSize: 12.0.r,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
      ],
    ));
  }
}
