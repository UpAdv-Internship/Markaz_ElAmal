import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/widgets/logo_with_text_widget.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/have_an_account_widget.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 341.w,
          height: 630.h,
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
            ],
          ),
        ),
        SizedBox(height: 25.h),
        HaveAnAccountTextWidget(
          textOne: AppStrings.haveAlreadyanAccount.tr(context),
          textTwo: AppStrings.signin.tr(context),
          onTap: () {
            navigateReplacment(context: context, route: Routes.signIn);
          },
        ),
      ],
    );
  }
}
