  import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showCityInputDialog(context,cityNameController) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Padding(
        padding: EdgeInsets.all(20.0.r),
        child: TextField(
          controller: cityNameController,
          decoration: const InputDecoration(
            labelText: "Enter City Name",
          ),
          onSubmitted: (text) => Navigator.pop(context),
        ),
      ),
    );
  }