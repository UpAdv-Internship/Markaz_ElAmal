import 'package:flutter/material.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';

import '../utils/app_colors.dart';

class CustomGNav extends StatelessWidget {
  const CustomGNav({
    super.key, required this.currentIndex, this.onTap, required this.tabs,
  });
  final int currentIndex;
  final Function(int)? onTap;
  final List<BottomNavigationBarItem> tabs;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
          currentIndex: currentIndex,
            onTap: onTap,
            unselectedLabelStyle: CustomTextStyle.poppins400White16,
            selectedLabelStyle: CustomTextStyle.poppins400White16,
            iconSize: 25,
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: AppColors.lightGrey,
            backgroundColor: AppColors.primary,
            unselectedIconTheme:
                const IconThemeData(color: AppColors.lightGrey),
            selectedItemColor: AppColors.white,

            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: AppStrings.home.tr(context)),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.apps_sharp),
                  label: AppStrings.category.tr(context)),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.watch_outlined),
                  label: AppStrings.book.tr(context)),
              BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: AppStrings.profile.tr(context)),
            ]);
    
    
    
  //   GNav(
  //       selectedIndex: currentIndex ,
  //       activeColor: AppColors.white,
  //       color: AppColors.lightGrey,
        
  //       // gap: 8,
  //       padding: const EdgeInsets.all(16),
  //       tabBorderRadius: 16,
  //       onTabChange: onChanged,
  //       backgroundColor: AppColors.primary,
  //       // tabBackgroundColor: AppColors.black12,
  //       tabs: tabs);
  // }
}}