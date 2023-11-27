import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/features/profile/components/feed_back_alert_dialog.dart';
import 'package:markaz_elamal/features/profile/components/rating_alert_dialog.dart';
import 'package:markaz_elamal/features/profile/widget/custom_circle_avatar_setting.dart';
import 'package:markaz_elamal/features/profile/widget/custom_list_tile.dart';
import 'package:markaz_elamal/features/profile/widget/setting_change_password_text_feild.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              navigateReplacment(context: context, route: Routes.profileScreen);
            },
            icon: const Icon(Icons.arrow_back_ios_new)),
        centerTitle: true,
        title: Text(AppStrings.settings.tr(context)),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: const Icon(Icons.settings))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(bottom: 0, left: 22.h, right: 22.h, top: 22.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              //text account setting
              Text(
                AppStrings.accountSettings.tr(context),
                style: CustomTextStyle.poppins700secondry20,
              ),
              SizedBox(
                height: 38.h,
              ),
              //! profile information
              CustomListTileSetting(
                leading: const CircleAvatarSetting(
                    color: AppColors.profileInfo,
                    icon: Icon(
                      Icons.person,
                      color: AppColors.white,
                    )),
                title: Text(
                  AppStrings.profileInformation.tr(context),
                ),
                subtitle: Text(AppStrings.nameEmailSecurity.tr(context)),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.secondary,
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              //! privacy
              CustomListTileSetting(
                leading: const CircleAvatarSetting(
                    color: AppColors.privacy,
                    icon: Icon(
                      FontAwesomeIcons.circleCheck,
                      color: AppColors.white,
                    )),
                title: Text(
                  AppStrings.privacy.tr(context),
                ),
                subtitle: Text(AppStrings.controlYourPrivacy.tr(context)),
                trailing: IconButton(
                    onPressed: () {
                      navigate(context: context, route: Routes.privacyScreen);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.secondary,
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              //! change password
              CustomListTileSetting(
                onTap: () {
                  showBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(
                          color: AppColors.secondary, width: 2),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r)),
                    ),
                    builder: (context) {
                      return SizedBox(
                        width: 428.w,
                        height: 620.h,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 22, vertical: 35),
                          child: SingleChildScrollView(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppStrings.changePassword.tr(context),
                                  style: CustomTextStyle.poppins600secondary32,
                                ),
                                SizedBox(
                                  height: 48.h,
                                ),
                                SettingChangePasswordTextField(
                                  labelText: AppStrings.enterCurrentPassword,
                                  hintText: AppStrings.enterCurrentPassword,
                                  controller: TextEditingController(),
                                  prefixIcon: const Icon(Icons.lock),
                                  suffixIcon: const Icon(Icons.remove_red_eye),
                                  validator: (value) {
                            if (value!.isEmpty) {
                              return AppStrings.pleaseEnterValidName
                                  .tr(context);
                            }
                            return null;
                          },
                                ),

                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
                leading: const CircleAvatarSetting(
                    color: AppColors.changePass,
                    icon: Icon(
                      Icons.lock_outline_rounded,
                      color: AppColors.white,
                    )),
                title: Text(
                  AppStrings.changePassword.tr(context),
                ),
                subtitle:
                    Text(AppStrings.changeYourCurrentPassword.tr(context)),
                trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.secondary,
                    )),
              ),
              SizedBox(
                height: 55.h,
              ),
              const Divider(
                color: AppColors.secondary,
              ),
              SizedBox(
                height: 37.h,
              ),
              //! general text
              Text(
                AppStrings.general.tr(context),
                style: CustomTextStyle.poppins700secondry20,
              ),
              SizedBox(
                height: 30.h,
              ),
              //! rate
              CustomListTileSetting(
                leading: const CircleAvatarSetting(
                    color: AppColors.rateApp,
                    icon: Icon(
                      FontAwesomeIcons.heart,
                      color: AppColors.white,
                    )),
                title: Text(
                  AppStrings.rateOurApp.tr(context),
                ),
                subtitle: Text(AppStrings.rateAndReviewUs.tr(context)),
                trailing: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => const RatingAlertDialog(),
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.secondary,
                    )),
              ),
              SizedBox(
                height: 30.h,
              ),
              //! fedback
              CustomListTileSetting(
                leading: const CircleAvatarSetting(
                    color: AppColors.feedback,
                    icon: Icon(
                      Icons.email_outlined,
                      color: AppColors.white,
                    )),
                title: Text(
                  AppStrings.sendFeedback.tr(context),
                ),
                subtitle: Text(AppStrings.sendUsSomeFeedback.tr(context)),
                trailing: IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return const FeedBackAlertDialog();
                        },
                      );
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.secondary,
                    )),
              ),

              SizedBox(
                height: 30.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
