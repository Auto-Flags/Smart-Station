import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/features/on_borading/data/model/on_boarding_model.dart';
import 'package:smart_station/features/on_borading/presentation/view/components/on_boarding_widget_item1.dart';
import 'package:smart_station/features/on_borading/presentation/view/components/on_boarding_widget_item2.dart';

class CustomOnBoardingWidget extends StatelessWidget {
  const CustomOnBoardingWidget(
      {super.key, required this.model, required this.anotherPosission, this.color, this.alignment});
  final OnBoardingModel model;
  final bool anotherPosission;
  final Color? color;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.backgroudColor,
      child: anotherPosission
          ? OnBoardingWidgetItem1(model: model)
          : OnBoardingWidgetItem2(model: model, color:color?? AppColors.whiteColor ,alignment: alignment,),
    );
  }
}

