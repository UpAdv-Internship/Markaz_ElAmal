import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class CustomTextFormFieldSearch extends StatelessWidget {
  const CustomTextFormFieldSearch({
    super.key,
    required this.controller,
    this.hint,
    this.label,
  });
  final TextEditingController controller;
  final String? hint;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.secondary,
            size: 24,
          ),
          hintText: hint,
          labelText: label,
          hintStyle: CustomTextStyle.poppins400secondary20),
    );
  }
}
