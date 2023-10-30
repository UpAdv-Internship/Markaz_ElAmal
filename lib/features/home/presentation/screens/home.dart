import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_assets.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    AppAssets.appLogo,
                    width: 25,
                    height: 30,
                  ),
                  SizedBox(
                    width: 6.5.w,
                  ),
                  Text(
                    AppStrings.markazElAmal.tr(context),
                    style: CustomTextStyle.poppins400secondary16,
                  ),
                  Spacer(),
                  
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
