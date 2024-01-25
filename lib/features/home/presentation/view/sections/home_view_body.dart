import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      'HomeView',
      style: Styles.changaBold20.copyWith(color: AppColors.blackColor),
    ));
  }
}
