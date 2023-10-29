import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/widgets/logo_with_text_widget.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 341.w,
      height: 400.h,
      decoration: BoxDecoration(
          color: AppColors.primary,
          border: const Border(
            top: BorderSide(color: AppColors.white, width: 8),
            left: BorderSide(color: AppColors.white, width: 8),
            right: BorderSide(color: AppColors.white, width: 8),
            bottom: BorderSide(color: AppColors.white, width: 8),
          ),
          borderRadius: BorderRadius.circular(30.r)),
      child: Column(
        children: [
          SizedBox(height: 5.h),
          //!Logo
          const LogoWithTextWidget(),
          //!Email
          TextFormField(
            decoration: const InputDecoration(),
          ),
        ],
      ),
    );
  }
}
