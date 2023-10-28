import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_assets.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Image.asset(AppAssets.appLogo),
              SizedBox(height: 12.h,),
              const Text('Markaz ElAmal',style: CustomTextStyle.peralta400secondary24,)
            
            ],
          ),
        ),
      ),
    );
  }
}