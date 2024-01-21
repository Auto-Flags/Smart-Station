import 'package:flutter/material.dart';
import 'package:smart_station/features/on_borading/presentation/view/on_borading_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const SmartStation());
}

class SmartStation extends StatelessWidget {
  const SmartStation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: Locale("ar", "AE"),
        localizationsDelegates:[
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],

        supportedLocales:[
          Locale('en'),
          Locale('ar'),
        ],
      home: OnBoardingView(),
    );
  }
}