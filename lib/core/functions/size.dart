import 'package:flutter/material.dart';

class MySize
{
  double heightSize(context)
  {
    return MediaQuery.sizeOf(context).height;
  }
  double widthSize(context)
  {
    return MediaQuery.sizeOf(context).width;
  }
}