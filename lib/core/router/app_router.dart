import 'package:flutter/material.dart';
import 'package:markaz_elamal/features/splash/presentation/screens/splash.dart';

class Routes {
  static const String initialRoute = '/';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No Found Route'),
            ),
          ),
        );
    }
  }
}
