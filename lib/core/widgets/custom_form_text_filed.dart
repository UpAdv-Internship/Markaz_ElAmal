import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class CustomFormTextFiled extends StatelessWidget {
  const CustomFormTextFiled({
    super.key,
    required this.controller,
    required this.labelText,
    this.color,
    this.prefixIcon,
    this.prefixIconColor,
    this.validator,
    this.suffixIcon,
    this.suffixIconColor,
    this.obscureText,
  });
  final TextEditingController controller;
  final Color? color;
  final String labelText;
  final Icon? prefixIcon;
  final Widget? suffixIcon;
  final bool? obscureText;
  final Color? prefixIconColor;
  final Color? suffixIconColor;

  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: CustomTextStyle.poppins400White16,
      validator: validator,
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        border: getBorderSide(color: color),
        enabledBorder: getBorderSide(color: color),
        errorBorder: getBorderSide(color: AppColors.red),
        focusedBorder: getBorderSide(color: color),
        label: Text(
          labelText,
          style: CustomTextStyle.poppins400White16,
        ),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        suffixIconColor: suffixIconColor ?? AppColors.white,
        prefixIconColor: prefixIconColor ?? AppColors.white,
      ),
    );
  }
}

OutlineInputBorder getBorderSide({Color? color}) {
  return OutlineInputBorder(
    borderSide: BorderSide(
      color: color ?? AppColors.white,
    ),
    borderRadius: BorderRadius.circular(
      14.r,
    ),
  );
}