import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_assets.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class OnBoardingScreenOne extends StatelessWidget {
  const OnBoardingScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'AR',
                        style: CustomTextStyle.poppins500White24,
                      ),
                    ),
                    
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'skip',
                        style: CustomTextStyle.poppins500White24,
                      ),
                    ),
                  ],
                ),
              ),
              Image.asset(AppAssets.onBoard1),
              const Spacer(),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical:40),
                height: 380.h,
                width: 430.w,
                alignment: Alignment.topLeft,
                decoration:  const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),topLeft: Radius.circular(40),topRight: Radius.circular(40)),
                    color: AppColors.white),
                child: const Text('onBoardingScreenOnee'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
