import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentTimeDot extends StatelessWidget {
  const CurrentTimeDot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10.0.r,
      height: 10.0.r,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
