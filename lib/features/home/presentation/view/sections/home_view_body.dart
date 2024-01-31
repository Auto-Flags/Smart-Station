import 'package:flutter/material.dart';
import 'package:smart_station/core/database/cache/cache_helper.dart';
import 'package:smart_station/core/functions/navigation.dart';
import 'package:smart_station/core/services/service_locateor.dart';
import 'package:smart_station/features/home/presentation/view/sections/top_section.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: InkWell(
            onTap: () {
              getIt<CacheHelper>().clearData();
              customReplacementNavigate(context, "/");
            },
            child: const Column(
              children: [TopSection()],
            )));
  }
}
