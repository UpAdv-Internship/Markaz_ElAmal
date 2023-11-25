import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class ProfileDetailsComponent extends StatelessWidget {
  const ProfileDetailsComponent({
    super.key, required this.title, required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title.tr(context),
          style: CustomTextStyle.poppins500lightGrey20,
        ),
        const Divider(
          color: AppColors.lightGrey,
          thickness: 1,
        ),
        Text(
          subTitle,
          style: CustomTextStyle.poppins400black16,
        ),
        SizedBox(height: 30.h),
      ],
    );
  }
}
