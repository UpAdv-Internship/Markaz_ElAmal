import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/custom_banner.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/have_an_account_widget.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/sign_in_form.dart';

class CustomFormBanner extends StatelessWidget {
  const CustomFormBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //!White Background
        const CustomBanner(),
        //!Sign In Form
        Positioned(
          top: -134.h,
          right: 44.w,
          child: const SignInForm(),
        ),
        //!Dont Have An Account?
        Positioned(
          bottom: 19.h,
          right: 100.w,
          child: HaveAnAccountTextWidget(
            textOne: AppStrings.dontHaveAnAccount.tr(context),
            textTwo: AppStrings.signup.tr(context),
          ),
        ),
      ],
    );
  }
}
