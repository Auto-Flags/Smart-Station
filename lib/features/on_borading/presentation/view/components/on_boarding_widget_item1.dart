import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/on_borading/data/model/on_boarding_model.dart';

class OnBoardingWidgetItem1 extends StatelessWidget {
  const OnBoardingWidgetItem1({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            model.title,
            style: Styles.changaBold20.copyWith(
              color: AppColors.primaryColor2,
            ),
            textAlign: TextAlign.center,
          ).animate().slide(duration: const Duration(seconds: 1), begin: const Offset(-1, 0), end: Offset.zero),
        ),
        const SizedBox(
          height: 8,
        ),
        Animate(
          effects: const [FadeEffect(), ScaleEffect()],
          child: Image.asset(
            model.image,
            height: MediaQuery.sizeOf(context).height * .55,
            width: double.infinity,
          ),
        )
      ],
    );
  }
}
