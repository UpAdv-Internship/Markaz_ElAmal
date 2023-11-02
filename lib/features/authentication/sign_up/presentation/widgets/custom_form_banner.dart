import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/features/authentication/sign_in/presentation/widgets/custom_banner.dart';
import 'package:markaz_elamal/features/authentication/sign_up/presentation/widgets/sgin_up_form.dart';

class CustomSignUpFormBanner extends StatelessWidget {
  const CustomSignUpFormBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        //!White Background
        const CustomBanner(),
        //!Sign In Form
        Positioned(
          top: -200.h,
          right: 44.w,
          child: const SignUpForm(),
        ),
      ],
    );
  }
}
