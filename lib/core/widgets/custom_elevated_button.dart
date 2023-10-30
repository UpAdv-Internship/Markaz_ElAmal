import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    this.width = 156,
    this.height = 43,
    this.backgroundColor = AppColors.primary,
    this.textColor = AppColors.white,
    this.borderColor = AppColors.transparent,    
    required this.onPressed, required this.text,
  });
  final String text;
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color backgroundColor;
  final Color textColor;
  final Color borderColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(width.w, height.h),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: BorderSide(
              color: borderColor,
            ),
          ),
        ),
        child: Text(
          text,
          style: CustomTextStyle.poppins400White16.copyWith(
            color: textColor,
          ),
        ),
        );
  }
}
