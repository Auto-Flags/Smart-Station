import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothIndecator extends StatelessWidget {
  const CustomSmoothIndecator({
    super.key,
    required this.onBoardingCubit,
  });

  final OnBoardingCubit onBoardingCubit;

  @override
  Widget build(BuildContext context) {
    return AnimatedSmoothIndicator(
      textDirection: TextDirection.ltr,
      activeIndex: onBoardingCubit.currentPage,
      count: onBoardingCubit.pages.length,
      effect: WormEffect(
          type: WormType.thinUnderground,
          activeDotColor: AppColors.primaryColor3,
          dotColor: Colors.grey[300]!,
          dotWidth: 26,
          dotHeight: 10,
          ),
    );
  }
}