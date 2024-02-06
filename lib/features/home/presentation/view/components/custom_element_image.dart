import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/features/home/data/model/elements_model.dart';

class CustomElementImage extends StatelessWidget {
  const CustomElementImage({
    super.key,
    required this.model,
  });

  final ElementsModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 30.w,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(model.imagePath), fit: BoxFit.fill),
          color: AppColors.backgroudColor,
          borderRadius: BorderRadius.circular(16)),
    );
  }
}