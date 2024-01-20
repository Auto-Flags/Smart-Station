import 'package:flutter/material.dart';
import 'package:smart_station/features/on_borading/presentation/view/sections/on_boarding_view_body.dart';

class OnBoradingView extends StatelessWidget {
  const OnBoradingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OnBoradingViewBody(),
    );
  }
}