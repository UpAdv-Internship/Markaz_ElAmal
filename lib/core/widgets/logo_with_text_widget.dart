import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_assets.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class LogoWithTextWidget extends StatelessWidget {
  const LogoWithTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 74.w,
          height: 94.h,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppAssets.appLogo), fit: BoxFit.fill),
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          AppStrings.markazElAmal.tr(context),
          style: CustomTextStyle.peralta400White16,
        ),
      ],
    );
  }
}
