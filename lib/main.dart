import 'package:flutter/material.dart';
import 'package:smart_station/features/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const SmartStation());
}

class SmartStation extends StatelessWidget {
  const SmartStation({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashView(),
    );
  }
}