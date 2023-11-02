import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/custom_elevated_button.dart';

class BookingCongratulations extends StatelessWidget {
  const BookingCongratulations({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //! Image
            CircleAvatar(
              radius: 100.r,
              backgroundColor: AppColors.primary,
              child: const Icon(
                Icons.check,
                color: AppColors.white,
                size: 120,
              ),
            ),
            SizedBox(height: 47.h),
            //! Title
            Text(
              AppStrings.congratulations.tr(context),
              style: CustomTextStyle.poppins800secondary40,
            ),
            SizedBox(height: 12.h),
            //! Subtitle
            Text(
              AppStrings.yourAppointmentIsSuccess.tr(context),
              style: CustomTextStyle.openSans600secondry20,
            ),
            SizedBox(height: 116.h),
            //! Back Button
            CustomElevatedButton(
              onPressed: () {
                navigateReplacment(context: context, route: Routes.bookScreen);
              },
              text: AppStrings.back.tr(context),
            ),
          ],
        ),
      ),
    );
  }
}
