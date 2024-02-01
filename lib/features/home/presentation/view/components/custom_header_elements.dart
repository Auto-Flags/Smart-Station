import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/style.dart';

class CustomElementsHeader extends StatelessWidget {
  const CustomElementsHeader(
      {super.key, this.title, this.subTitle, this.trailing});

  final String? title, subTitle, trailing;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        ListTile(
          title: Text(
            title ?? "",
            style: Styles.changaBold24,
          ),
        ),
        const Positioned(
          right: -28,
          child: Icon(
            Icons.arrow_right_rounded,
            color: AppColors.backgroudColor,
            size: 64,
          ),
        )
      ],
    );
  }
}
