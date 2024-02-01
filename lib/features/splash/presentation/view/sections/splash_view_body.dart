import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/database/cache/cache_helper.dart';
import 'package:smart_station/core/functions/navigation.dart';
import 'package:smart_station/core/services/service_locateor.dart';
import 'package:smart_station/core/utils/assets.dart';
import 'package:smart_station/core/utils/color.dart';
import 'package:smart_station/core/utils/strings.dart';
import 'package:smart_station/core/utils/style.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    bool onBoardingVisited =
        getIt<CacheHelper>().getData(key: "OnBoardingVisited") ?? false;
    if (onBoardingVisited == true) {
      delayedNavigate(context, '/HomeView');
    } else {
      delayedNavigate(context, '/onBoardingView');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.h,
        width: 100.w,
        color: AppColors.backgroudColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.imagesAppIcon)
                .animate()
                .fadeIn()
                .slide(
                    begin: const Offset(0, 1),
                    end: Offset.zero,
                    duration: const Duration(seconds: 2))
                .scale(alignment: Alignment.centerRight),
            Text(
              AppStrings.appName,
              style: Styles.changaBold20.copyWith(color: AppColors.blackColor)
              ,
            )
            .animate()
                .fadeIn()
                .slide(
                    begin: const Offset(0, -1),
                    end: Offset.zero,
                    duration: const Duration(seconds: 2))
                .scale(alignment: Alignment.centerLeft),
          ],
        ));
  }
}
