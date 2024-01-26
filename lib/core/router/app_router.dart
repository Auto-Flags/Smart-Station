import 'package:go_router/go_router.dart';
import 'package:smart_station/features/home/presentation/view/home_view.dart';
import 'package:smart_station/features/on_borading/presentation/view/on_borading_view.dart';
import 'package:smart_station/features/splash/presentation/view/splash_view.dart';

final GoRouter routes = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/OnBoardingView",
      builder: (context, state) => const OnBoardingView(),
    ),
    GoRoute(
      path: "/HomeView",
      builder: (context, state) => const HomeView(),
    ),
    
  ],
);