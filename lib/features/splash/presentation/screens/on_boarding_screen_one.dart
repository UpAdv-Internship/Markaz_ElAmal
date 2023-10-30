import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/features/splash/data/on_boarding_model/on_board_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({super.key});
 final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: controller,
                    itemCount: OnBoaringModel.onBoaringScreens.length,
                    itemBuilder: (context, index) {
                      return Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //!ar button
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'AR',
                                    style: CustomTextStyle.poppins700White24,
                                  ),
                                ),
                                //!skip button
                                index != 2
                                    ? TextButton(
                                        onPressed: () {
                                          controller.jumpToPage(2);
                                        },
                                        child: Text(
                                          'skip',
                                          style:
                                              CustomTextStyle.poppins700White24,
                                        ),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          SizedBox(height: 57.h),
                          //!image
                          Image.asset(
                              width: 290.w,
                              height: 290.h,
                              OnBoaringModel.onBoaringScreens[index].imagePath),
                          const Spacer(),
                          //!container
                          Container(
                            padding: const EdgeInsets.all(20),
                            height: 380.h,
                            width: 430.w,
                            alignment: Alignment.topLeft,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40)),
                                color: AppColors.white),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 19.h,
                                ),
                                Text(
                                  OnBoaringModel.onBoaringScreens[index].title
                                      .tr(context),
                                  style: CustomTextStyle.poppins600secondary24,
                                ),
                                SizedBox(
                                  height: 29.h,
                                ),
                                Text(
                                    OnBoaringModel
                                        .onBoaringScreens[index].subTitle
                                        .tr(context),
                                    style:
                                        CustomTextStyle.poppins500secondary20),
                                // SizedBox(height: 40.h),
                                const Spacer(),
                                //!row button and smooth
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SmoothPageIndicator(
                                      controller: controller,
                                      count: 3,
                                      effect:  ExpandingDotsEffect(
                                        dotColor: AppColors.lightGrey,
                                          activeDotColor: AppColors.primary,
                                          dotHeight: 10.h,
                                          dotWidth: 15.w,
                                          spacing: 10),
                                    ),
                                    index != 2
                                        ? TextButton(
                                            onPressed: () {
                                              controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.linear);
                                            },
                                            child: Row(
                                              children: [
                                                
                                                Text(
                                                  AppStrings.next.tr(context),
                                                  style: CustomTextStyle
                                                      .poppins500secondary24,
                                                ),
                                                const Icon(
                                                    Icons.arrow_forward_rounded,size: 33,),
                                              ],
                                            ),
                                          )
                                        : TextButton(
                                            onPressed: () {},
                                            child: Row(
                                              children: [
                                                
                                                Text(
                                                  AppStrings.start.tr(context),
                                                  style: CustomTextStyle
                                                      .poppins500secondary24,
                                                ),
                                                const Icon(
                                                    Icons.arrow_forward_rounded,size: 33,),
                                              ],
                                            ),
                                          )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
