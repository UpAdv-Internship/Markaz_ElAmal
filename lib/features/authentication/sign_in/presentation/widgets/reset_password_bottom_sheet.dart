import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/custom_form_text_filed.dart';
import 'package:markaz_elamal/features/authentication/common/custom_authentication_btn.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/forgot_password_cubit/forgot_password_cubit.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/forgot_password_cubit/forgot_password_state.dart';

showResetPasswordBottomSheet(context) {
  showBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
        side: const BorderSide(color: AppColors.secondary, width: 2),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.r), topRight: Radius.circular(30.r))),
    builder: (context) {
      return BlocConsumer<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {},
        builder: (context, state) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
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
                    AppStrings.enterNewPassword.tr(context),
                    style: CustomTextStyle.poppins600secondary24,
                  ),
                  SizedBox(height: 14.h),
                  //!Password Text Filed
                  CustomFormTextFiled(
                    obscureText: context
                        .read<ForgotPasswordCubit>()
                        .obscurePasswordTextValue,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.thisFieldISRequired.tr(context);
                      }
                      return null;
                    },
                    controller: context
                        .read<ForgotPasswordCubit>()
                        .passwordTextEditingController,
                    labelText: AppStrings.passward.tr(context),
                    labelTextStyle: CustomTextStyle.poppins400secondary16,
                    color: AppColors.secondary,
                    prefixIconColor: AppColors.secondary,
                    suffixIconColor: AppColors.secondary,
                    prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.w),
                    suffixIcon: IconButton(
                      icon: Icon(
                        context
                                    .read<ForgotPasswordCubit>()
                                    .obscurePasswordTextValue ==
                                true
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.secondary,
                      ),
                      onPressed: () {
                        context
                            .read<ForgotPasswordCubit>()
                            .obscurePasswordText();
                      },
                    ),
                  ),
                  //!Confirm Password Text Filed
                  SizedBox(height: 30.h),
                  Text(
                    AppStrings.confirmNewPassword.tr(context),
                    style: CustomTextStyle.poppins600secondary24,
                  ),
                  SizedBox(height: 14.h),
                  CustomFormTextFiled(
                    obscureText: context
                        .read<ForgotPasswordCubit>()
                        .obscureConfirmPasswordTextValue,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return AppStrings.thisFieldISRequired.tr(context);
                      }
                      return null;
                    },
                    controller: context
                        .read<ForgotPasswordCubit>()
                        .confirmPasswordTextEditingController,
                    labelText: AppStrings.passward.tr(context),
                    labelTextStyle: CustomTextStyle.poppins400secondary16,
                    color: AppColors.secondary,
                    prefixIconColor: AppColors.secondary,
                    suffixIconColor: AppColors.secondary,
                    prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.w),
                    suffixIcon: IconButton(
                      icon: Icon(
                        context
                                    .read<ForgotPasswordCubit>()
                                    .obscureConfirmPasswordTextValue ==
                                true
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined,
                        color: AppColors.secondary,
                      ),
                      onPressed: () {
                        context
                            .read<ForgotPasswordCubit>()
                            .obscureConfirmPasswordText();
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
    },
  );
}
