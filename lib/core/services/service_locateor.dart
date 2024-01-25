import 'package:get_it/get_it.dart';
import 'package:smart_station/core/database/cache/cache_helper.dart';

final getIt = GetIt.instance;
void setupServiceLocator()
{
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}