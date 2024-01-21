import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_cubit.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_state.dart';

class OnBoradingViewBody extends StatelessWidget {
  const OnBoradingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var onBoardingCubit = context.read<OnBoardingCubit>();
    return BlocConsumer<OnBoardingCubit, OnBoardingState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              onPageChangeCallback: onBoardingCubit.onPageChangeCallback,
              liquidController: onBoardingCubit.controller,
              pages: onBoardingCubit.pages,
            ),
          ],
        );
      },
    );
  }
}
