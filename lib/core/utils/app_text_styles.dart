import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';

abstract class CustomTextStyle {
  static const peralta400secondary24 = TextStyle(
    fontFamily: "Peralta",
    color: AppColors.secondary,
    fontWeight: FontWeight.w400,
    fontSize: 24,
  );
  static const poppins700White24 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.white,
    fontWeight: FontWeight.w700,
    fontSize: 24,
  );
  static const poppins500White24 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.white,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );
  static const poppins600secondary24 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.secondary,
    fontWeight: FontWeight.w600,
    fontSize: 24,
  );

  static const poppins500secondary20 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.secondary,
    fontWeight: FontWeight.w500,
    fontSize: 20,
  );

  static const poppins500secondary24 = TextStyle(
    fontFamily: "Poppins",
    color: AppColors.secondary,
    fontWeight: FontWeight.w500,
    fontSize: 24,
  );
}
