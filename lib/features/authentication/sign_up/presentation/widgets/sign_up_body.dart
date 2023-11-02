import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/custom_title_header.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/widgets/custom_form_banner.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitleHeader(text: AppStrings.letsStartWithSignUp.tr(context)),
        const CustomSignUpFormBanner()
      ],
    );
  }
}
