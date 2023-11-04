import 'package:flutter/material.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/screens/sign_in_screen.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/screens/sign_up_screen.dart';
import 'package:markaz_elamal/features/booking/presentation/screens/book_screen.dart';
import 'package:markaz_elamal/features/booking/presentation/screens/booking_congratulations_screen.dart';
import 'package:markaz_elamal/features/booking/presentation/screens/payment_option.dart';
import 'package:markaz_elamal/features/home/presentation/screens/bottom_bar.dart';
import 'package:markaz_elamal/features/home/presentation/screens/home.dart';
import 'package:markaz_elamal/features/category/screens/doctors_category.dart';
import 'package:markaz_elamal/features/splash/presentation/screens/on_boarding_screen.dart';
import 'package:markaz_elamal/features/booking/presentation/screens/doctor_profile.dart';
import 'package:markaz_elamal/features/splash/presentation/screens/splash.dart';


import '../../features/category/screens/category_screen.dart';
import '../../features/profile/screens/profile_screen.dart';


class Routes {
  static const String initialRoute = '/';
  static const String onBoarding = '/onBoarding';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String doctorProfile = '/doctorProfile';
  static const String home = '/HomeScreen';
  static const String category = '/category';
  static const String paymentOption = '/paymentOption';
  static const String bookingCongratulations = '/bookingCongratulations';
  static const String bookScreen = '/bookScreen';
  static const String botthomNavv = '/botthomNavv';
  static const String doctorsCategory = '/doctorsCategory';
  static const String profileScreen = '/profileScreen';
}

class AppRoutes {
  static Route? generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.initialRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingScreen());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInScreen());
      case Routes.botthomNavv:
        return MaterialPageRoute(builder: (_) => const BotthomNavv());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpScreen());
      case Routes.doctorProfile:
        return MaterialPageRoute(builder: (_) => const DoctorProfile());
      case Routes.category:
        return MaterialPageRoute(builder: (_) => const CategoryScreen());
      case Routes.paymentOption:
        return MaterialPageRoute(builder: (_) => const PaymentOption());
      case Routes.bookingCongratulations:
        return MaterialPageRoute(builder: (_) => const BookingCongratulations());
      case Routes.bookScreen:
        return MaterialPageRoute(builder: (_) => const BookScreen());
      case Routes.doctorsCategory:
        return MaterialPageRoute(builder: (_) => const DoctorsCategory());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfileScreen());

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
