
import 'package:smart_station/core/database/cache/cache_helper.dart';
import 'package:smart_station/core/functions/navigation.dart';
import 'package:smart_station/core/services/service_locateor.dart';

void checkOnBoardingState(context)
{
    bool onBoardingVisited = getIt<CacheHelper>().getData(key: "OnBoardingVisited") ?? false;
    if(onBoardingVisited == true)
    {
      delayedNavigate(context, '/HomeView');
    }else
    {
      delayedNavigate(context, '/onBoardingView');
    }
}