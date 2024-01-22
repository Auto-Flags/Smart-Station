import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_cubit.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_state.dart';
import 'package:smart_station/features/on_borading/presentation/view/components/custom_on_boarding_button.dart';
import 'package:smart_station/features/on_borading/presentation/view/components/custom_on_boarding_skip_button.dart';
import 'package:smart_station/features/on_borading/presentation/view/components/custom_smooth_indecator.dart';

class OnBoradingViewBody extends StatelessWidget {
  const OnBoradingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var onBoardingCubit = context.read<OnBoardingCubit>();
    return BlocConsumer<OnBoardingCubit, OnBoardingState>(
      listener: (context, state) {
        if(state is OnBoardingCounter){
          onBoardingCubit.currentPage + 1;
        }
      },
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              onPageChangeCallback: onBoardingCubit.onPageChangeCallback,
              liquidController: onBoardingCubit.controller,
              pages: onBoardingCubit.pages,
            ),
            Positioned(
                top: 15,
                right: 7,
                child:onBoardingCubit.currentPage ==2 ?
                const SizedBox()
                  :CustomOnBoardingSkipButton(cubit: onBoardingCubit,)),
            Positioned(
                bottom: 70,
                child: CustomOnBoardingButton(
                  cubit: onBoardingCubit,
                )),
            Positioned(
                bottom: 20,
                child: CustomSmoothIndecator(onBoardingCubit: onBoardingCubit))
          ],
        );
      },
    );
  }
}

