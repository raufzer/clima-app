import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';
import 'package:meteoplus_app/utils/curved_clipper.dart';
import 'package:meteoplus_app/utils/gradient_button_colors.dart';

class CurvedContainer extends StatelessWidget {
  const CurvedContainer({
    super.key,
    this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipPath(
        clipper: CurvedClipper(80),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: gradientButtonColors,
                border: GradientBoxBorder(
                  gradient: gradientButtonColorsInverse,
                  width: 2,
                ),
              ),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
