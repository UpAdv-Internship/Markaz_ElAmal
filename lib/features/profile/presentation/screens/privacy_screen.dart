import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/custom_elevated_button.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/settings_cubit/cubit/settings_cubit.dart';
import 'package:markaz_elamal/features/profile/presentation/cubits/settings_cubit/cubit/settings_state.dart';
import 'package:markaz_elamal/features/profile/widget/list_tile_privacy.dart';

class PrivacyScreen extends StatelessWidget {
  const PrivacyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              navigateReplacment(context: context, route: Routes.settingScreen);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: Text(AppStrings.privacy.tr(context)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 22.w),
        child: BlocConsumer<SettingsCubit, SettingsState>(
          listener: (context, state) {},
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.privacyPreferences.tr(context),
                  style: CustomTextStyle.poppins600secondary24,
                ),
                SizedBox(
                  height: 28.h,
                ),
                Text(
                  '''
Hi there, we don't want to keep any info that you're
not comfortable sharing. We want our users to have
100% control of their informariton 100% of the time. 
Toggle below what you'd like to share and not share
baring in mind the more you share with us the more
tailored user experience you'll receive - thanks!''',
                  style: CustomTextStyle.poppins400secondary13,
                ),
                SizedBox(
                  height: 43.h,
                ),
                Column(
                  children: [
                    ListTilePrivacy(
                      title: AppStrings.name.tr(context),
                      subTitle: 'Mahmoud',
                      switchcValue:
                          BlocProvider.of<SettingsCubit>(context).switchOnName,
                      onToggle: (value) {
                        BlocProvider.of<SettingsCubit>(context)
                            .switchName(value);
                      },
                    ),
                    Divider(
                      color: AppColors.lightGrey,
                      height: 2.h,
                      thickness: 1.h,
                    ),
                    ListTilePrivacy(
                      title: AppStrings.phoneNumber.tr(context),
                      subTitle: '01112128654',
                      switchcValue:
                          BlocProvider.of<SettingsCubit>(context).switchOnPhone,
                      onToggle: (value) {
                        BlocProvider.of<SettingsCubit>(context)
                            .switchPhone(value);
                      },
                    ),
                    Divider(
                      color: AppColors.lightGrey,
                      height: 2.h,
                      thickness: 1.h,
                    ),
                    ListTilePrivacy(
                      title: AppStrings.email.tr(context),
                      subTitle: 'Mahmoud@gmail.com',
                      switchcValue:
                          BlocProvider.of<SettingsCubit>(context).switchOnEmail,
                      onToggle: (value) {
                        BlocProvider.of<SettingsCubit>(context)
                            .switchEmail(value);
                      },
                    ),
                    Divider(
                      color: AppColors.lightGrey,
                      height: 2.h,
                      thickness: 1.h,
                    ),
                    ListTilePrivacy(
                      title: AppStrings.recommendations.tr(context),
                      subTitle: 'If we see you interact with somthing more,',
                      switchcValue: BlocProvider.of<SettingsCubit>(context)
                          .switchOnRecomend,
                      onToggle: (value) {
                        BlocProvider.of<SettingsCubit>(context)
                            .switchRecomend(value);
                      },
                    ),
                    Divider(
                      color: AppColors.lightGrey,
                      height: 2.h,
                      thickness: 1.h,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomElevatedButton(
                            onPressed: () {},
                            text: AppStrings.savePreferences.tr(context)),
                        CustomElevatedButton(
                          onPressed: () {},
                          text: AppStrings.cancel.tr(context),
                          backgroundColor: AppColors.lightGrey,
                          textColor: AppColors.secondary,
                          borderColor: AppColors.secondary,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
