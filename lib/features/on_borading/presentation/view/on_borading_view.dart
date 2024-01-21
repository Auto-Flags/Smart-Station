import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smart_station/features/on_borading/presentation/cubit/on_boarding_cubit.dart';
import 'package:smart_station/features/on_borading/presentation/view/sections/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => OnBoardingCubit(),
          child: const OnBoradingViewBody(),
        ),
      ),
    );
  }
}
