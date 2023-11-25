import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/widgets/custom_form_text_filed.dart';
import 'package:markaz_elamal/core/widgets/logo_with_text_widget.dart';
import 'package:markaz_elamal/features/authentication/common/custom_authentication_btn.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/have_an_account_widget.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/cubit/sign_up_cubit.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/cubit/sign_up_state.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Form(
          key: context.read<SignUpCubit>().signUpFormController,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 341.w,
                  height: 680.h,
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
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          //!Logo
                          const LogoWithTextWidget(),
                          SizedBox(height: 15.h),

                          //!Name
                          CustomFormTextFiled(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.thisFieldISRequired
                                    .tr(context);
                              }
                              return null;
                            },
                            controller: context
                                .read<SignUpCubit>()
                                .nameTextEditingController,
                            labelText: AppStrings.name.tr(context),
                            prefixIcon: Icon(Icons.person, size: 30.w),
                          ),
                          SizedBox(height: 15.h),

                          //!Phone Number
                          CustomFormTextFiled(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.thisFieldISRequired
                                    .tr(context);
                              }
                              return null;
                            },
                            controller: context
                                .read<SignUpCubit>()
                                .phoneTextEditingController,
                            labelText: AppStrings.phoneNumber.tr(context),
                            prefixIcon: Icon(Icons.phone, size: 30.w),
                          ),

                          SizedBox(height: 15.h),

                          //!Email

                          CustomFormTextFiled(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.thisFieldISRequired
                                    .tr(context);
                              }
                              return null;
                            },
                            controller: context
                                .read<SignUpCubit>()
                                .emailTextEditingController,
                            labelText: AppStrings.email.tr(context),
                            prefixIcon: Icon(Icons.email_outlined, size: 30.w),
                          ),
                          SizedBox(height: 15.h),

                          //!Password
                          CustomFormTextFiled(
                            obscureText: context
                                .read<SignUpCubit>()
                                .obscurePasswordTextValue,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.thisFieldISRequired
                                    .tr(context);
                              }
                              return null;
                            },
                            controller: context
                                .read<SignUpCubit>()
                                .passwordTextEditingController,
                            labelText: AppStrings.passward.tr(context),
                            prefixIcon:
                                Icon(Icons.lock_outline_rounded, size: 30.w),
                            suffixIcon: IconButton(
                              icon: Icon(
                                context
                                            .read<SignUpCubit>()
                                            .obscurePasswordTextValue ==
                                        true
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              onPressed: () {
                                context
                                    .read<SignUpCubit>()
                                    .obscurePasswordText();
                              },
                            ),
                          ),
                          SizedBox(height: 15.h),

                          //!Confirm Password
                          CustomFormTextFiled(
                            obscureText: context
                                .read<SignUpCubit>()
                                .obscureConfirmPasswordTextValue,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.thisFieldISRequired
                                    .tr(context);
                              }
                              return null;
                            },
                            controller: context
                                .read<SignUpCubit>()
                                .confirmPasswordTextEditingController,
                            labelText: AppStrings.confirmPassword.tr(context),
                            prefixIcon:
                                Icon(Icons.lock_outline_rounded, size: 30.w),
                            suffixIcon: IconButton(
                              icon: Icon(
                                context
                                            .read<SignUpCubit>()
                                            .obscureConfirmPasswordTextValue ==
                                        true
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              onPressed: () {
                                context
                                    .read<SignUpCubit>()
                                    .obscureConfirmPasswordText();
                              },
                            ),
                          ),
                          SizedBox(height: 15.h),
                          //! Sign Up Btn
                          CustomAuthenticationBtn(
                              text: AppStrings.signup.tr(context),
                              onPressed: () {
                                if (context
                                    .read<SignUpCubit>()
                                    .signUpFormController
                                    .currentState!
                                    .validate()) {
                                  navigate(
                                      context: context,
                                      route: Routes.doctorProfile);
                                }
                              }),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.h),

                //! Have Already An Account
                Align(
                  child: HaveAnAccountTextWidget(
                    textOne: AppStrings.haveAlreadyanAccount.tr(context),
                    textTwo: AppStrings.signin.tr(context),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
