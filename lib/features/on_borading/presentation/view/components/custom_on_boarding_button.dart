import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/functions/navigation.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/strings.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/on_borading/data/function/on_boarding_visited.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_cubit.dart';

class CustomOnBoardingButton extends StatelessWidget {
  const CustomOnBoardingButton({
    super.key,
    required this.cubit,
  });

  final OnBoardingCubit cubit;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if(cubit.currentPage == 2)
        {
          customReplacementNavigate(context, '/HomeView');
          onBoardingVisited();
        }else
        {
          cubit.animateToPage();
        }
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 1600),
          height: 7.h,
          width: cubit.currentPage == 2 ? 35.w : 15.w,
          decoration: BoxDecoration(
              borderRadius: cubit.currentPage == 2
                  ? const BorderRadius.all(Radius.circular(24))
                  : BorderRadius.circular(24),
              color: AppColors.primaryColor,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26, blurRadius: 3, offset: Offset(1, 4))
              ]),
          child: cubit.currentPage == 2
              ?  Center(
                  child: Text(
                    AppStrings.enter,
                    style: Styles.changaBold20,
                  ),
                )
              :  Icon(
                  Icons.arrow_back_ios_rounded,
                  color: AppColors.whiteColor,
                  size: 40.dp,
                )),
    );
  }
}
