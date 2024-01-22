import 'package:flutter/material.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/on_borading/data/model/on_boarding_model.dart';

class OnBoardingWidgetItem2 extends StatelessWidget {
  const OnBoardingWidgetItem2({
    super.key,
    required this.model,required this.color, this.alignment,
  });

  final OnBoardingModel model;
  final Color color;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Image.asset(
            model.image,
            height: MediaQuery.sizeOf(context).height * .64,
            width: double.infinity,
            alignment: alignment?? Alignment.centerRight,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                model.title,
                style: Styles.changaBold20.copyWith(color: color),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      );
  }
}


