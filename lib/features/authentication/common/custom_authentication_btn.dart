import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/custom_elevated_button.dart';

class CustomAuthenticationBtn extends StatelessWidget {
  const CustomAuthenticationBtn({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return CustomElevatedButton(
      onPressed: onPressed,
      text: text,
      textColor: AppColors.primary,
      borderColor: AppColors.white,
      backgroundColor: AppColors.white,
      width: 300.w,
      height: 45.h,
      textStyle: CustomTextStyle.poppins600primary24,
    );
  }
}
