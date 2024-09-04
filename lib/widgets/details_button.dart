import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:meteoplus_app/utils/gradient_button_colors.dart';

class DetailsButton extends StatelessWidget {
  const DetailsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 65.0.r,
            ),
            Container(
              width: 318.0.r,
              height: 92.0.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0.r),
                gradient: gradientButtonColors,
                border: GradientBoxBorder(
                  gradient: gradientButtonColorsInverse,
                  width: 2.0.r,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
