import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/strings.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_cubit.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_state.dart';

class CustomOnBoardingSkipButton extends StatelessWidget {
  const CustomOnBoardingSkipButton({
    super.key, required this.cubit,
  });
  final OnBoardingCubit cubit;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        cubit.skip();
      },
      child: Container(
        height: 40,
        width: 110,
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(24),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black26, blurRadius: 3, offset: Offset(1, 4))
            ]),
        child: const Center(
            child: Text(AppStrings.skip, style: Styles.changaBold20)),
      ),
    );
  }
}
