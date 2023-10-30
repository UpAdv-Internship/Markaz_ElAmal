import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_assets.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/inkwell_icon_button.dart';
import 'package:markaz_elamal/features/home/widget/custom_text_field_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              //!message and notifications
              Row(
                children: [
                  Image.asset(
                    AppAssets.appLogo,
                    width: 25.w,
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 6.5.w,
                  ),
                  Text(
                    AppStrings.markazElAmal.tr(context),
                    style: CustomTextStyle.peralta400White16
                        .copyWith(color: AppColors.secondary),
                  ),
                  const Spacer(),
                  InkWellIconButton(
                      height: 40.h,
                      width: 40.w,
                      icon: const Icon(Icons.notifications_sharp,
                          color: AppColors.white),
                      onTap: () {}),
                  SizedBox(
                    width: 15.w,
                  ),
                  InkWellIconButton(
                      height: 40.h,
                      width: 40.w,
                      icon: const Icon(
                        Icons.messenger_outline,
                        color: AppColors.white,
                      ),
                      onTap: () {}),
                ],
              ),
              SizedBox(
                height: 37.w,
              ),
              //!search
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 310.w,
                    child: CustomTextFormFieldSearch(
                      controller: TextEditingController(),
                      hint: AppStrings.search,
                    ),
                  ),
                  InkWellIconButton(
                    height: 56.h,
                    width: 55.w,
                    onTap: () {},
                    icon: const Icon(
                      Icons.format_align_left_rounded,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
