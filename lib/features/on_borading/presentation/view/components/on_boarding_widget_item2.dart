import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:smart_station/core/utils/style.dart';
import 'package:smart_station/features/on_borading/data/model/on_boarding_model.dart';

class OnBoardingWidgetItem2 extends StatelessWidget {
  const OnBoardingWidgetItem2({
    super.key,
    required this.model,
    required this.color,
    this.alignment,
  });

  final OnBoardingModel model;
  final Color color;
  final AlignmentGeometry? alignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          model.image,
          height: MediaQuery.sizeOf(context).height * .64,
          width: double.infinity,
          alignment: alignment ?? Alignment.centerRight,
        )
            .animate()
            .slide(
                duration: const Duration(seconds: 1),
                begin: const Offset(0, -1),
                end: Offset.zero)
            .fadeIn(),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            model.title,
            style: Styles.changaBold20.copyWith(color: color),
            textAlign: TextAlign.center,
          ).animate().slide(
              duration: const Duration(seconds: 1),
              begin: const Offset(-1, 0),
              end: Offset.zero),
        )
      ],
    );
  }
}
