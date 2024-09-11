import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Image weatherIconSelctor(String text, double iconWidth, double iconHeight) {
  switch (text) {
    case 'Sunny':
      return Image.asset('assets/icons/sunny.png',
          width: iconWidth.r, height: iconHeight.r);
    case 'Party Cloudy':
      return Image.asset('assets/icons/partly_cloudy.png',
          width: iconWidth.r, height: iconHeight.r);
    case 'Cloudy':
      return Image.asset('assets/icons/cloudy.png',
          width: iconWidth.r, height: iconHeight.r);
    case 'Rainy':
      return Image.asset('assets/icons/rainy.png',
          width: iconWidth.r, height: iconHeight.r);
    case 'Snowy':
      return Image.asset('assets/icons/snowy.png',
          width: iconWidth.r, height: iconHeight.r);
    case 'Thunderstorm':
      return Image.asset('assets/icons/thunder_storm.png',
          width: iconWidth.r, height: iconHeight.r);
    case 'Moderate or heavy rain with thunder':
      return Image.asset('assets/icons/rain_storm.png',
          width: iconWidth.r, height: iconHeight.r);
    case 'Thundery outbreaks possible':
      return Image.asset('assets/icons/partly_day_storm.png',
          width: iconWidth.r, height: iconHeight.r);

    default:
      return Image.asset('assets/icons/sunny.png',
          width: iconWidth.r, height: iconHeight.r);
  }
}
