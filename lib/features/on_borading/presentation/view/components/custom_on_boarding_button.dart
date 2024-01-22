import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/strings.dart';
import 'package:smart_station/core/utils/style.dart';
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
        cubit.animateToPage();
      },
      child: AnimatedContainer(
          duration: const Duration(milliseconds: 1600),
          height: 55,
          width: cubit.currentPage == 2 ? 144 : 55,
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
              ? const Center(
                  child: Text(
                    AppStrings.enter,
                    style: Styles.changaBold20,
                  ),
                )
              : const Icon(
                  Icons.arrow_back_ios_rounded,
                  color: AppColors.whiteColor,
                  size: 40,
                )),
    );
  }
}
