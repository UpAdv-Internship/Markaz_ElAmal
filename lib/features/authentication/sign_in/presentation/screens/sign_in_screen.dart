import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: SignInBody(),
      ),
    );
  }
}
