import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

class ListTilePrivacy extends StatelessWidget {
  const ListTilePrivacy({
    super.key, required this.title, required this.subTitle, required this.switchcValue, required this.onToggle,
  });
final String title;
final String subTitle;
final bool switchcValue;
final  void Function(bool) onToggle;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.all(0),
        title: Text(
          title,
          style: CustomTextStyle.poppins500secondary20,
        ),
        subtitle: Text(
          subTitle,
          style: CustomTextStyle.poppins400secondary13,
        ),
        trailing: SizedBox(
          width: 65.w,
          height: 31.h,
          child: FlutterSwitch(
            width: 65.w,
            height: 31.h,
            borderRadius: 30.0,
            activeColor: AppColors.primary,
            activeToggleColor: AppColors.lightGrey,
            value: switchcValue,
            onToggle: onToggle
          ),
        ));
  }
}
