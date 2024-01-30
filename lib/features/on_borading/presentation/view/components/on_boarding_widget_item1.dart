import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/on_borading/data/model/on_boarding_model.dart';

class OnBoardingWidgetItem1 extends StatelessWidget {
  const OnBoardingWidgetItem1({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 12.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            model.title,
            style: Styles.changaBold20.copyWith(
              color: AppColors.primaryColor2,
            ),
            textAlign: TextAlign.center,
          )
        ),
        const SizedBox(
          height: 8,
        ),
        Image.asset(
          model.image,
          height: 55.h,
          width: 100.w,
        )
      ],
    );
  }
}
