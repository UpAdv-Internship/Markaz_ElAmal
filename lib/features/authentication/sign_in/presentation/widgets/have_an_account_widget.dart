import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class HaveAnAccountTextWidget extends StatelessWidget {
  const HaveAnAccountTextWidget({
    super.key,
    required this.textOne,
    required this.textTwo,
  });
  final String textOne;
  final String textTwo;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: textOne,
            style: CustomTextStyle.poppins600primary16,
          ),
          TextSpan(
            text: textTwo,
            style: CustomTextStyle.poppins600secondary16,
          ),
        ],
      ),
    );
  }
}
