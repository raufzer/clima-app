import 'package:flutter/material.dart';
import 'package:clima_app/widgets/time_selector_button.dart';
class TimeSelector extends StatelessWidget {
  const TimeSelector({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TimeSelectorButton(time: 'Daily', color: Colors.white, opactiy: 0.1),
        SizedBox(
          width: 8,
        ),
        TimeSelectorButton(time: 'Weekly', color: Colors.black, opactiy: 0.1),
      ],
    );
  }
}
