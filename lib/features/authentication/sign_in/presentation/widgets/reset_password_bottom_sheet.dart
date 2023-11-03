import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/custom_form_text_filed.dart';
import 'package:markaz_elamal/features/authentication/common/custom_authentication_btn.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/cubit/sign_in_cubit.dart';

showResetPasswordBottomSheet(context) {
  showBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.secondary, width: 2),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r))),
    builder: (context) {
      return SizedBox(
        height: MediaQuery.of(context).size.height * 0.7,
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 47.h),
              Text(AppStrings.resetPassword.tr(context),
                  style: CustomTextStyle.poppins600secondary24),
              SizedBox(height: 18.h),
              Text(
                AppStrings.enterTheCodeYouReceiveInMail.tr(context),
                style: CustomTextStyle.poppins400secondary18,
              ),
              SizedBox(height: 30.h),
              Text(
                AppStrings.passward.tr(context),
                style: CustomTextStyle.poppins600secondary24,
              ),
              SizedBox(height: 14.h),
              CustomFormTextFiled(
                obscureText:
                    context.read<SignInCubit>().obscurePasswordTextValue,
                validator: (value) {
                  if (value!.isEmpty) {
                    return AppStrings.thisFieldISRequired.tr(context);
                  }
                  return null;
                },
                controller:
                    context.read<SignInCubit>().passwordTextEditingController,
                labelText: AppStrings.passward.tr(context),
                prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.w),
                suffixIcon: IconButton(
                  icon: Icon(
                    context.read<SignInCubit>().obscurePasswordTextValue == true
                        ? Icons.visibility_outlined
                        : Icons.visibility_off_outlined,
                  ),
                  onPressed: () {
                    context.read<SignInCubit>().obscurePasswordText();
                  },
                ),
              ),
              SizedBox(height: 45.h),
              CustomAuthenticationBtn(
                text: AppStrings.resetPassword.tr(context),
                onPressed: () {},
                width: MediaQuery.of(context).size.width,
                height: 60.h,
                backgroundColor: AppColors.secondary,
                textColor: AppColors.secondary,
                textStyle: CustomTextStyle.poppins600White24,
              ),
            ],
          ),
        ),
      );
    },
  );
}
