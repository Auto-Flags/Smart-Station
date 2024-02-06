import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/utils/assets.dart';
import 'package:smart_station/features/home/presentation/view/components/custom_search_bar.dart';

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
      child: const CustomSearchBar(),
    );
  }
}


