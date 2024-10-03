import 'package:clima_app/cubits/get_hourly_weather_cubit/get_hourly_weather_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:clima_app/screens/home_screen.dart';

void main() async {
  await dotenv.load();
  // WidgetsFlutterBinding.ensureInitialized();
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  runApp(const CimaApp());
}

class CimaApp extends StatelessWidget {
  const CimaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocProvider(
            create: (context) => GetHourlyWeatherCubit(),
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Clima',
              home: child,
            ),
          );
        },
        child: MaterialApp(
          theme: ThemeData(
          
          ),
          home: const HomeScreen(),
        ));
  }
}
