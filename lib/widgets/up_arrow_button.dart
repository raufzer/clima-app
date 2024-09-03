import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:meteoplus_app/utils/gradient_button_colors.dart';

class UpArrowButton extends StatelessWidget {
  const UpArrowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: gradientButtonColors,
            border: GradientBoxBorder(
              gradient: gradientButtonColorsInverse,
              width: 2,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SvgPicture.asset(
              'assets/icons/up_arrow.svg',
              height: 12,
              width: 10,
            ),
          ),
        ),
      ),
    );
  }
}
