import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

TextStyle _textStyle({
  required Color color,
  required double fontSize,
  required FontWeight fontWeight,
}) {
  return TextStyle(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
  );
}



// //bold Style
// TextStyle boldStyle({
//   Color color = AppColors.white,
//   double fontSize = 24,
// }) {
//   return _textStyle(
//     color: color,
//     fontSize: fontSize.sp,
//     fontWeight: FontWeight.bold,
//   );
// }

// //regular Style
// TextStyle regularStyle({
//   Color color = AppColors.white,
//   double fontSize = 24,
// }) {
//   return _textStyle(
//     color: color,
//     fontSize: fontSize.sp,
//     fontWeight: FontWeight.normal,
//   );
// }

