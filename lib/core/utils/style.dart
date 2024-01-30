import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/utils/color.dart';

abstract class Styles
{
  static final changaBold20 = TextStyle(
    fontSize: 20.dp,
    fontFamily: 'Changa',
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
    shadows: const [
              Shadow(
                offset: Offset(1.0, 5.0),
                blurRadius: 8.0,
                color: Colors.black12
              ),
            ]
  );
}