import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/theme/theme.dart';
import 'package:markaz_elamal/features/splash/presentation/screens/splash.dart';

class MarkazElamal extends StatelessWidget {
  const MarkazElamal({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return  MaterialApp(
          home: const SplashScreen(),
          debugShowCheckedModeBanner: false,
          theme: getAppTheme(),
        );
      },
    );
  }
}
