import 'package:date_time_picker_widget/date_time_picker_widget.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/custom_elevated_button.dart';
import 'package:time_range/time_range.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: IconButton(
          onPressed: () {}, //* Navigate to Doctors Category
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              children: [
                //! Doctor Image
                Image.asset('assets/images/osama1.png', height: 200.h),
                //! Doctor Data
                Stack(
                  children: [
                    Container(
                      width: double.maxFinite,
                      height: 120.h,
                      padding: EdgeInsets.all(10.h),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        children: [
                          //* Years of Experience
                          Text(
                            "12 Years of experience",
                            style: CustomTextStyle.poppins600White20,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.fromLTRB(20.w, 40.h, 20.w, 24.h),
                      margin: EdgeInsets.only(top: 56.h),
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //* Name
                          Text(
                            'Dr: Osamaali',
                            style: CustomTextStyle.poppins600secondary24,
                          ),
                          //* Category
                          Text(
                            'Speech',
                            style: CustomTextStyle.poppins500primary20,
                          ),
                          SizedBox(height: 6.h),
                          //* Rate
                          Container(
                            width: 70.w,
                            height: 30.h,
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: BorderRadius.circular(16.r),
                              border: Border.all(color: AppColors.secondary),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '4.9',
                                  style: CustomTextStyle.poppins600White16,
                                ),
                                const Icon(
                                  Icons.star,
                                  color: AppColors.markedStars,
                                  size: 16,
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 12.h),
                          //* Description
                          Text(
                            'Figma ipsum component variant main layer. Library figma reesizing invite mask arrow ipsum community. Prototype main ellipse opacity community auto flatten link. List device rectangle figjam subtract. Font pixel selection image rotate. Outline asset arrow library flatten blur. Style plugin union edit align.',
                            style: CustomTextStyle.poppins400secondary16,
                          ),
                          SizedBox(height: 15.h),
                          //* Book a date
                          Text(
                            AppStrings.bookaDate.tr(context),
                            style: CustomTextStyle.poppins600secondary16,
                          ),
                          SizedBox(height: 16.h),
                          EasyInfiniteDateTimeLine(
                            // controller: _controller,
                            locale: "en",
                            firstDate: DateTime.now(),
                            focusDate: DateTime.now(),
                            showTimelineHeader: false,
                            lastDate: DateTime(DateTime.now().year,
                                DateTime.now().month, DateTime.now().day + 30),
                            dayProps: EasyDayProps(
                              width: 82.w,
                              height: 40.h,
                              dayStructure: DayStructure.dayNameOnly,
                              activeDayStyle: DayStyle(
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.secondary,
                                  ),
                                ),
                              ),
                              inactiveDayStyle: const DayStyle(
                                borderRadius: 8,
                              ),
                            ),

                            onDateChange: (selectedDate) {
                              // setState(() {
                              // _focusDate = selectedDate;
                              // });
                            },
                          ),
                          SizedBox(height: 14.h),
                          //* Select time
                          Text(
                            AppStrings.selectaTime.tr(context),
                            style: CustomTextStyle.poppins600secondary16,
                          ),
                          SizedBox(height: 5.h),
                          // ListView.builder(
                          //   itemCount: 3,
                          //   scrollDirection: Axis.horizontal,
                          //   itemBuilder: (context, index) {
                          //     return Container(

                          //     );
                          //   },
                          // ),
                          SizedBox(height: 42.h),
                          //* Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomElevatedButton(
                                onPressed: () {},
                                text: AppStrings.sendMessage.tr(context),
                                backgroundColor: AppColors.lightGrey,
                                textColor: AppColors.secondary,
                                borderColor: AppColors.secondary,
                              ),
                              SizedBox(width: 54.w),
                              CustomElevatedButton(
                                onPressed: () {},
                                text: AppStrings.bookNow.tr(context),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
