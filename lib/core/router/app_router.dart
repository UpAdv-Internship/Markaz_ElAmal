import 'package:flutter/material.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/screens/sign_in_screen.dart';
import 'package:markaz_elamal/features/booking/presentation/screens/doctor_profile.dart';
import 'package:markaz_elamal/features/splash/presentation/screens/splash.dart';

class Routes {
  static const String initialRoute = '/';
  static const String signIn = '/signIn';
  static const String doctorProfile = '/doctorProfile';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.doctorProfile:
        return MaterialPageRoute(builder: (_) => const DoctorProfile());

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
