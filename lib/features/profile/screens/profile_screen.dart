import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

import '../../../core/utils/app_assets.dart';
import '../../../core/utils/app_strings.dart';
import '../commons/list_tile.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 15.h,
                ),
                Text(AppStrings.profile.tr(context),style: CustomTextStyle.poppins700secondary26,),
                SizedBox(
                  height: 25.h,
                ),

                // Profile Image

                CircleAvatar(
                  radius: 70.r,
                  backgroundColor: AppColors.primary,
                  child: Image.asset(AppAssets.profile),
                ),
                SizedBox(
                  height: 14.h,
                ),

                 // Name

                 Text('Name Here',style: CustomTextStyle.poppins600secondary24,),
                SizedBox(
                  height: 35.h,
                ),

                // history

                ListTileProfile(
                  desc: AppStrings.history.tr(context),
                  image: Image.asset(AppAssets.history),
                  onTap: (){},
                ),
                SizedBox(
                  height: 10.h,
                ),
                // profile detailes
                ListTileProfile(
                  desc: AppStrings.profileDetailes.tr(context),
                  image: Image.asset(AppAssets.profileDetailes),
                  onTap: (){},
                ),
                SizedBox(
                  height: 10.h,
                ),
                //chats
                ListTileProfile(
                  desc: AppStrings.chats.tr(context),
                  image: Image.asset(AppAssets.chat),
                  onTap: (){},
                ),
                SizedBox(
                  height: 10.h,
                ),
                //settings
                ListTileProfile(
                  desc: AppStrings.settings.tr(context),
                  image: Image.asset(AppAssets.setting),
                  onTap: (){
                    navigate(context: context, route: Routes.sttingScreen);
                  },
                ),
                SizedBox(
                  height: 10.h,
                ),
                //help
                ListTileProfile(
                  desc: AppStrings.help.tr(context),
                  image: Image.asset(AppAssets.help),
                  onTap: (){},
                ),
                SizedBox(
                  height: 10.h,
                ),
                //logout
                ListTileProfile(
                  desc: AppStrings.logout.tr(context),
                  image: Image.asset(AppAssets.logout),
                  onTap: (){},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

