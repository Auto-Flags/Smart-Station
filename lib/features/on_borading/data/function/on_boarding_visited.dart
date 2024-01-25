import 'package:smart_station/core/database/cache/cache_helper.dart';
import 'package:smart_station/core/services/service_locateor.dart';

void onBoardingVisited()
{
  getIt<CacheHelper>().saveData(key: "OnBoardingVisited", value: true);
}