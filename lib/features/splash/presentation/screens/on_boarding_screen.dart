import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/bloc/cubit/global_cubit.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/utils/app_assets.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/features/splash/data/on_boarding_model/on_board_model.dart';
import 'package:markaz_elamal/features/splash/presentation/functions/on_boarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    List<OnBoaringModel> onBoaringScreens = [
      OnBoaringModel(
        imagePath: AppAssets.onBoard1,
        title: AppStrings.onBordingTitle1.tr(context),
        subTitle: AppStrings.onBoardingSubTitle1.tr(context),
      ),
      OnBoaringModel(
        imagePath: AppAssets.onBoard2,
        title: AppStrings.onBordingTitle2.tr(context),
        subTitle: AppStrings.onBoardingSubTitle2.tr(context),
      ),
      OnBoaringModel(
        imagePath: AppAssets.onBoard3,
        title: AppStrings.onBordingTitle3.tr(context),
        subTitle: AppStrings.onBoardingSubTitle3.tr(context),
      ),
    ];
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: controller,
                    itemCount: onBoaringScreens.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                //!ar button
                                TextButton(
                                  onPressed: () {
                                    BlocProvider.of<GlobalCubit>(context)
                                        .switchLang();
                                  },
                                  child: Text(
                                    AppStrings.langCode.tr(context),
                                    style: CustomTextStyle.poppins700White24,
                                  ),
                                ),
                                //!skip button
                                index != 2
                                    ? TextButton(
                                        onPressed: () {
                                          onBoardingVisited();
                                          navigateReplacment(
                                              context: context,
                                              route: Routes.signIn);
                                        },
                                        child: Text(
                                          AppStrings.skip.tr(context),
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
                              onBoaringScreens[index].imagePath),
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
                                  onBoaringScreens[index].title,
                                  style: CustomTextStyle.poppins600secondary24,
                                ),
                                SizedBox(
                                  height: 29.h,
                                ),
                                Text(onBoaringScreens[index].subTitle,
                                    style:
                                        CustomTextStyle.poppins500secondary20),
                                const Spacer(),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SmoothPageIndicator(
                                      controller: controller,
                                      count: 3,
                                      effect: ExpandingDotsEffect(
                                          dotColor: AppColors.lightGrey,
                                          activeDotColor: AppColors.primary,
                                          dotHeight: 10.h,
                                          dotWidth: 15.w,
                                          spacing: 10),
                                    ),
                                    index != 2
                                        ? TextButton(
                                            onPressed: () {
                                              controller.nextPage(
                                                  duration: const Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.bounceIn);
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  AppStrings.next.tr(context),
                                                  style: CustomTextStyle
                                                      .poppins500secondary24,
                                                ),
                                                const Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 33,
                                                ),
                                              ],
                                            ),
                                          )
                                        //!Start
                                        : TextButton(
                                            onPressed: () {
                                              onBoardingVisited();
                                              navigateReplacment(
                                                  context: context,
                                                  route: Routes.signIn);
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                  AppStrings.start.tr(context),
                                                  style: CustomTextStyle
                                                      .poppins500secondary24,
                                                ),
                                                const Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 33,
                                                ),
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
