import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/custom_form_banner.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/custom_title_header.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitleHeader(text: AppStrings.letsStartWithSignIn.tr(context)),
        SizedBox(height: 250.h),
        const CustomFormBanner(),
      ],
    );
  }
}
