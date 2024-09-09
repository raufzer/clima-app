import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentTimeDot extends StatelessWidget {
  final bool isHighlighted;

  const CurrentTimeDot({super.key, required this.isHighlighted});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0.r,
      height: 10.0.r,
      decoration: BoxDecoration(
        color: isHighlighted
            ? Colors.white
            : Colors.transparent, 
        shape: BoxShape.circle,
      ),
    );
  }
}
