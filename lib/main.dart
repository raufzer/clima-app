import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:meteoplus_app/screens/home_screen.dart';

void main() {
  runApp(const MeteoPlusApp());
}

// commit 
class MeteoPlusApp extends StatelessWidget {
  const MeteoPlusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'MeteoPlus',
          home: child,
        );
      },
      child: const HomeScreen(
      ),
    );
  }
}
