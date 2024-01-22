import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/color.dart';

abstract class Styles
{
  static const changaBold20 = TextStyle(
    fontSize: 20,
    fontFamily: 'Changa',
    fontWeight: FontWeight.bold,
    color: AppColors.whiteColor,
    shadows: [
              Shadow(
                offset: Offset(1.0, 5.0),
                blurRadius: 8.0,
                color: Colors.black12
              ),
            ]
  );
}