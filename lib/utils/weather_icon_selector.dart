
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

SvgPicture weatherIconSelctor(String text, double iconWidth, double iconHeight){

  switch(text){
    case 'Sunny':
      return SvgPicture.asset('assets/icons/slight_touch_happyday.svg',
      width: iconWidth.r,
      height: iconHeight.r
      );
    case 'Party Cloudy':
      return SvgPicture.asset('assets/icons/partly_cloudy.svg');
    case 'Cloudy':
      return SvgPicture.asset('assets/icons/cloudy.svg');
    case 'Rainy':
      return SvgPicture.asset('assets/icons/rainy.svg');
    case 'Snowy':
      return SvgPicture.asset('assets/icons/snowy.svg');
    case 'Thunderstorm':
      return SvgPicture.asset('assets/icons/thnderstorm.svg');
    case 'Moderate or heavy rain with thunder':
      return SvgPicture.asset('assets/icons/Rain_storm.svg');
    case 'Thundery outbreaks possible':
      return SvgPicture.asset('assets/icons/partly_day_storm.svg');
    
    default:
      return SvgPicture.asset('assets/icons/slight_touch_happyday.svg');
  }
}