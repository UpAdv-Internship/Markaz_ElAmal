import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/widgets/sign_up_body.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primary,
      body: SignUpBody(),
    );
  }
}
