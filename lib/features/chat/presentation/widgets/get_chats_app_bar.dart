import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

AppBar getChatsAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        AppStrings.chats.tr(context),
        style: CustomTextStyle.poppins600White24,
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new,
          color: AppColors.white,
        ),
      ),
    );
  }