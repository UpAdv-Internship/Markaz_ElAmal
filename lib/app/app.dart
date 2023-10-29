import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/theme/theme.dart';

class MarkazElamal extends StatelessWidget {
  const MarkazElamal({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) {
        return  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: getAppTheme(),
          initialRoute: Routes.initialRoute,
          onGenerateRoute: AppRoutes.generateRoute,
        );
      },
    );
  }
}
