import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({
    super.key,
    required this.controller,
    this.maxLines,
  });
  final TextEditingController controller;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(),
      maxLines: maxLines ?? 1,
      cursorColor: AppColors.secondary,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.transparent,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.r),
          borderSide: const BorderSide(
            color: AppColors.transparent,
          ),
        ),
      ),
    );
  }
}
