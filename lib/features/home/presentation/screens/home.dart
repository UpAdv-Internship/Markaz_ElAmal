import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_assets.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/inkwell_icon_button.dart';
import 'package:markaz_elamal/features/home/widget/List_doctor_detils.dart';
import 'package:markaz_elamal/features/home/widget/custom_images.dart';
import 'package:markaz_elamal/features/home/widget/custom_text_field_search.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              //!message and notifications
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
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
                        icon: const Icon(Icons.notifications_outlined,
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
              ),
              SizedBox(
                height: 5.h,
              ),
              //!search
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
                child: Row(
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
                        Icons.equalizer_rounded,
                        color: AppColors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              //!sliderr
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ImageSlideshow(
                  height: 150.h,
                  indicatorColor: AppColors.primary,
                  onPageChanged: (value) {
                    debugPrint('Page changed: $value');
                  },
                  autoPlayInterval: 3000,
                  isLoop: false,
                  children: const [
                    CustomImages(
                      imgPath: AssetImage(AppAssets.imageSlider),
                    ),
                    CustomImages(
                      imgPath: AssetImage(AppAssets.imageSlider),
                    ),
                    CustomImages(
                      imgPath: AssetImage(AppAssets.imageSlider),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              //!Category
              Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                ),
                child: Row(
                  children: [
                    Text(
                      AppStrings.category.tr(context),
                      style: CustomTextStyle.poppins600secondary24,
                    ),
                    const Spacer(),
                    //!see all
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            AppStrings.seeAll.tr(context),
                            style: CustomTextStyle.poppins400secondary20,
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColors.secondary,
                            size: 33,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              //!list view category
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: SizedBox(
                  height: 60.h,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        width: 10.w,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    controller: PageController(),
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 150.w,
                        height: 60.h,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: AppColors.primary,
                            borderRadius: BorderRadius.circular(16)),
                        child: Text(
                          'speech',
                          style: CustomTextStyle.poppins600White16,
                        ),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              //!Doctors
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      AppStrings.doctors.tr(context),
                      style: CustomTextStyle.poppins600secondary24,
                    ),
                    const Spacer(),
                    //!see all
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Text(
                            AppStrings.seeAll.tr(context),
                            style: CustomTextStyle.poppins400secondary20,
                          ),
                          const Icon(
                            Icons.arrow_forward_rounded,
                            color: AppColors.secondary,
                            size: 33,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //!container doctor
              SizedBox(
                height: 280.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 10.w,
                    );
                  },
                  itemBuilder: ((context, index) {
                    return const ListDoctorDetils();
                  }),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          
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
            ]),
      ),
    );
  }
}
