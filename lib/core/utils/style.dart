import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/utils/color.dart';

abstract class Styles
{
  static const changaBold20 = TextStyle(
    fontSize: 20,
    fontFamily: 'Changa',
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
    shadows:  [
              Shadow(
                offset: Offset(1.0, 5.0),
                blurRadius: 8.0,
                color: Colors.black12
              ),
            ]
  );

  static const changaBold16 = TextStyle(
    fontSize: 16,
    fontFamily: 'Changa',
    fontWeight: FontWeight.w900,
    color: AppColors.blackColor,
  );

  static const changaBold24 = TextStyle(
    fontSize: 24,
    fontFamily: 'Changa',
    fontWeight: FontWeight.w600,
    color: AppColors.primaryColor3,
  );
}