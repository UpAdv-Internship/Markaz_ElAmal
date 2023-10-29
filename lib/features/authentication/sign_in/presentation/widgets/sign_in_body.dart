import 'package:flutter/material.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/custom_form_banner.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/custom_title_header.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomTitleHeader(),
        CustomFormBanner(),
      ],
    );
  }
}
