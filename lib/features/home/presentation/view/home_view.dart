import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/features/home/presentation/view/sections/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: CircularProgressIndicator(color: AppColors.primaryColor,),
            ),
            HomeViewBody(),
          ],
        ),
      ),
    );
  }
}
