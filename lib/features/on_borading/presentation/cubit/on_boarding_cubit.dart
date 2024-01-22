import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';
import 'package:smart_station/core/utils/assets.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/strings.dart';
import 'package:smart_station/features/on_borading/data/model/on_boarding_model.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_state.dart';
import 'package:smart_station/features/on_borading/presentation/view/components/custom_on_boarding_widget.dart';

class OnBoardingCubit extends Cubit<OnBoardingState> {
  OnBoardingCubit() : super(OnBoardingInitial());

  int currentPage = 0;
  int nextPage = 0;
  final controller = LiquidController();
  final List<Widget> pages = [
    CustomOnBoardingWidget(
      color: AppColors.blackColor,
      anotherPosission: false,
      model: OnBoardingModel(
        image: Assets.imagesAppOnBoarding1,
        title: AppStrings.onBoardingString1,
      ),
    ),
    CustomOnBoardingWidget(
      anotherPosission: true,
      model: OnBoardingModel(
        image: Assets.imagesAppOnBoarding2,
        title: AppStrings.onBoardingString2,
      ),
    ),
    CustomOnBoardingWidget(
      alignment: Alignment.centerLeft,
      anotherPosission: false,
      model: OnBoardingModel(
        image: Assets.imagesAppOnBoarding3,
        image2: Assets.imagesAppOnBoarding3Icon,
        title: AppStrings.onBoardingString3,
      ),
      
    ),
  ];

  void onPageChangeCallback(int activeIndex) {
    currentPage = activeIndex;
    emit(OnBoardingCounter());
  }

  void animateToPage() {
    nextPage = controller.currentPage + 1;
    controller.animateToPage(page: nextPage);
  }

  skip() => controller.jumpToPage(page: 2);
}
