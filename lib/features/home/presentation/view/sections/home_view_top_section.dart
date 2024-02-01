import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/utils/assets.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/strings.dart';

class HomeViewTopSection extends StatelessWidget {
  const HomeViewTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 33, vertical: 17),
      alignment: Alignment.bottomCenter,
      width: 100.w,
      height: 40.h,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(24), bottomRight: Radius.circular(24)),
        image: DecorationImage(
            image: AssetImage(
              Assets.imagesHomeHeaderPic,
            ),
            fit: BoxFit.cover),
      ),
      child: SizedBox(
        height: 40,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            TextField(
                decoration: InputDecoration(
                    hintText: AppStrings.search,
                    prefixIcon: const Icon(Icons.highlight_remove_rounded),
                    fillColor: AppColors.whiteColor,
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide.none))),
            const Positioned(
              left: -2,
              top: -5,
              child: CircleAvatar(
                radius: 24,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.search,
                  color: AppColors.whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
