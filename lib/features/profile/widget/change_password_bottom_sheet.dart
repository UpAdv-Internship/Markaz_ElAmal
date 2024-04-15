import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/custom_elevated_button.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/settings_cubit/cubit/settings_cubit.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/settings_cubit/cubit/settings_state.dart';
import 'package:markaz_elamal/features/profile/widget/setting_change_password_text_feild.dart';

class ChangePasswordBottomSheet extends StatelessWidget {
  const ChangePasswordBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsCubit, SettingsState>(
      listener: (context, state) {},
      builder: (context, state) {
        final settingCubit = BlocProvider.of<SettingsCubit>(context);
        return SizedBox(
          width: 428.w,
          height: 620.h,
          //TOP 22 L W R 22
          child: Padding(
padding: const EdgeInsets.only(bottom: 0,left: 22,right: 22,top: 32),
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.changePassword.tr(context),
                      style: CustomTextStyle.poppins600secondary32,
                    ),
                    SizedBox(
                      height: 48.h,
                    ),
                    //!current passsword
                    SettingChangePasswordTextField(
                      passwordIsVisabal: settingCubit.obscureCurrentPassword,
                      labelText: AppStrings.enterCurrentPassword,
                      hintText: AppStrings.enterCurrentPassword,
                      controller: settingCubit.currentPasswordController,
                      prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.w),
                      suffixIcon: IconButton(
                        icon: Icon(
                          settingCubit.obscureCurrentPassword == true
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: AppColors.secondary,
                        ),
                        onPressed: () {
                          settingCubit.obscureShowCurrentPassword();
                        },
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return AppStrings.pleaseEnterValidPassword
                              .tr(context);
                        }
                        return null;
                      },
                    ),
                    //!new passsword
                    SettingChangePasswordTextField(
                      passwordIsVisabal: settingCubit.obscureNewPassword,
                      labelText: AppStrings.enterNewPassword,
                      hintText: AppStrings.enterNewPassword,
                      controller: settingCubit.newPasswordController,
                      prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.w),
                      suffixIcon: IconButton(
                        icon: Icon(
                          settingCubit.obscureNewPassword == true
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: AppColors.secondary,
                        ),
                        onPressed: () {
                          settingCubit.obscureShowNewPassword();
                        },
                      ),
                      validator: (data) {
                        if (data!.length < 6 || data.isEmpty) {
                          return AppStrings.pleaseEnterValidPassword
                              .tr(context);
                        }
                        if (data != settingCubit.newPasswordController.text) {
                          return AppStrings.pleaseEnterValidPassword
                              .tr(context);
                        }

                        return null;
                      },
                    ),
                    //!confirm new passsword
                    SettingChangePasswordTextField(
                      passwordIsVisabal: settingCubit.obscureConfrimNewPassword,
                      labelText: AppStrings.confirmNewPassword,
                      hintText: AppStrings.confirmNewPassword,
                      controller: settingCubit.confitmNewPasswordController,
                      prefixIcon: Icon(Icons.lock_outline_rounded, size: 30.w),
                      suffixIcon: IconButton(
                        icon: Icon(
                          settingCubit.obscureConfrimNewPassword == true
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: AppColors.secondary,
                        ),
                        onPressed: () {
                          settingCubit.obscureShowConfirmNewPassword();
                        },
                      ),
                      validator: (data) {
                        if (data!.length < 6 || data.isEmpty) {
                          return AppStrings.pleaseEnterValidPassword
                              .tr(context);
                        }
                        if (data !=
                            settingCubit.confitmNewPasswordController.text) {
                          return AppStrings.pleaseEnterValidPassword
                              .tr(context);
                        }

                        return null;
                      },
                    ),
                    //! buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            onPressed: () {}, text: AppStrings.confirm.tr(context)),
                        CustomElevatedButton(
                          onPressed: () {},
                          text: AppStrings.cancel.tr(context),
                          backgroundColor: AppColors.lightGrey,
                          textColor: AppColors.secondary,
                          borderColor: AppColors.secondary,
                        ),
                      ],
                    ),
            SizedBox(height: 20.h,)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
