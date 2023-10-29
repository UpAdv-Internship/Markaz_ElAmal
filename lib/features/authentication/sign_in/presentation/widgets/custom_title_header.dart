import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class CustomTitleHeader extends StatelessWidget {
  const CustomTitleHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 21.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 68.h),
          SizedBox(
            width: 178.w,
            child: Text(
              AppStrings.letsStartWithSignIn.tr(context),
              style: CustomTextStyle.poppins600White24,
            ),
          ),
        ],
      ),
    );
  }
}
