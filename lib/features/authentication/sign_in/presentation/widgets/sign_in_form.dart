import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/widgets/logo_with_text_widget.dart';
import 'package:markaz_elamal/core/widgets/custom_form_text_filed.dart';
import 'package:markaz_elamal/features/authentication/common/custom_authentication_btn.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/sign_cubit/sign_in_cubit.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/sign_cubit/sign_in_state.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/forgot_password_bottom_sheet.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/have_an_account_widget.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            Container(
              width: 341.w,
              height: 500.h,
              decoration: BoxDecoration(
                  color: AppColors.primary,
                  border: Border(
                    top: BorderSide(color: AppColors.white, width: 8.w),
                    left: BorderSide(color: AppColors.white, width: 8.w),
                    right: BorderSide(color: AppColors.white, width: 8.w),
                    bottom: BorderSide(color: AppColors.white, width: 8.w),
                  ),
                  borderRadius: BorderRadius.circular(30.r)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Form(
                  key: context.read<SignInCubit>().signInFormController,
                  child: ListView(
                    children: [
                      //!Logo
                      const LogoWithTextWidget(),
                      SizedBox(height: 20.h),

                      //!Email

                      CustomFormTextFiled(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return AppStrings.thisFieldISRequired.tr(context);
                          }
                          return null;
                        },
                        controller: context
                            .read<SignInCubit>()
                            .emailTextEditingController,
                        labelText: AppStrings.email.tr(context),
                        prefixIcon: Icon(Icons.email_outlined, size: 30.w),
                      ),
                      SizedBox(height: 16.h),
                      //!Password
                      CustomFormTextFiled(
                        obscureText: context
                            .read<SignInCubit>()
                            .obscurePasswordTextValue,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return AppStrings.thisFieldISRequired.tr(context);
                          }
                          return null;
                        },
                        controller: context
                            .read<SignInCubit>()
                            .passwordTextEditingController,
                        labelText: AppStrings.passward.tr(context),
                        prefixIcon:
                            Icon(Icons.lock_outline_rounded, size: 30.w),
                        suffixIcon: IconButton(
                          icon: Icon(
                            context
                                        .read<SignInCubit>()
                                        .obscurePasswordTextValue ==
                                    true
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                          ),
                          onPressed: () {
                            context.read<SignInCubit>().obscurePasswordText();
                          },
                        ),
                      ),
                      SizedBox(height: 16.h),

                      //!Sign In Button

                      CustomAuthenticationBtn(
                          text: AppStrings.signin.tr(context),
                          onPressed: () {
                            navigate(
                                context: context, route: Routes.botthomNavv);
                          }),
                      SizedBox(height: 16.h),

                      //!Forgot Password
                      const Align(
                        child: ForgetPasswordBottomSheet(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 120.h),
            //!Don't Have An Account ?
            HaveAnAccountTextWidget(
              textOne: AppStrings.dontHaveAnAccount.tr(context),
              textTwo: AppStrings.signup.tr(context),
              onTap: () {
                navigate(context: context, route: Routes.signUp);
              },
            ),
          ],
        );
      },
    );
  }
}
