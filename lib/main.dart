import 'package:flutter/material.dart';
import 'package:flutter_sizer/flutter_sizer.dart';
import 'package:smart_station/core/database/cache/cache_helper.dart';
import 'package:smart_station/core/router/app_router.dart';
import 'package:smart_station/core/services/service_locateor.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  runApp(const SmartStation());
}

class SmartStation extends StatelessWidget {
  const SmartStation({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSizer(
      builder:(context, orientation, screenType) {
        return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        locale:const Locale("ar", "AE"),
          localizationsDelegates:const[
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales:const [
            Locale('en'),
            Locale('ar'),
          ],
        routerConfig: routes
      );
      },
    );
  }
}