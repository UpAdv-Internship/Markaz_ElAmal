import 'package:flutter/material.dart';
import 'package:markaz_elamal/features/splash/presentation/screens/on_boarding_screen_one.dart';
import 'package:markaz_elamal/features/splash/presentation/screens/splash.dart';


class Routes {
  static const String initialRoute = '/';
  static const String changeLang = '/changeLang';

  static const String login = '/login';
  static const String sendCode = '/sendCode';
  static const String resetPassword = '/resetPassword';
  static const String menuHome = '/menuHome';
  static const String addMeal = '/addMeal';
  static const String profileHome = '/profileHome';
  static const String updateProfile = '/updateProfile';
  static const String setting = '/setting';
  static const String changePassword = '/changePassword';
  static const String home = '/home';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreenOne());
      
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text('No Found Route'),
                  ),
                ));
    }
  }
}
