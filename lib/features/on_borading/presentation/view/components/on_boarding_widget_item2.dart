import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/on_borading/data/model/on_boarding_model.dart';

class OnBoardingWidgetItem2 extends StatelessWidget {
  const OnBoardingWidgetItem2({
    super.key,
    required this.model,required this.color,
  });

  final OnBoardingModel model;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Image.asset(
            model.image,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              model.title,
              style: Styles.changaBold20.copyWith(color: color),
              textAlign: TextAlign.center,
            ),
          )
        ],
      );
  }
}


