import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/core/widgets/custom_elevated_button.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_cubit.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_state.dart';

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
                          BlocBuilder<BookingCubit, BookingState>(
                            builder: (context, state) {
                              return EasyInfiniteDateTimeLine(
                                // controller: _controller,
                                locale: "en",
                                onDateChange: (selectedDate) {
                                  // setState(() {
                                  BlocProvider.of<BookingCubit>(context)
                                      .focusDate = selectedDate;
                                  print(BlocProvider.of<BookingCubit>(context)
                                      .focusDate);
                                  // });
                                },
                                firstDate: DateTime.now(),
                                focusDate:
                                    BlocProvider.of<BookingCubit>(context)
                                        .focusDate,
                                showTimelineHeader: false,
                                lastDate: DateTime(
                                    DateTime.now().year,
                                    DateTime.now().month,
                                    DateTime.now().day + 30),
                                dayProps: EasyDayProps(
                                  width: 82.w,
                                  height: 60.h,
                                  dayStructure: DayStructure.dayStrDayNumMonth,
                                  activeDayStyle: DayStyle(
                                    dayNumStyle: CustomTextStyle
                                        .poppins400White16
                                        .copyWith(fontSize: 13),
                                    dayStrStyle: CustomTextStyle
                                        .poppins400White16
                                        .copyWith(fontSize: 13),
                                    monthStrStyle: CustomTextStyle
                                        .poppins400White16
                                        .copyWith(fontSize: 13),
                                    decoration: BoxDecoration(
                                      color: AppColors.primary,
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: AppColors.secondary,
                                      ),
                                    ),
                                  ),
                                  inactiveDayStyle: DayStyle(
                                    borderRadius: 8,
                                    dayNumStyle: CustomTextStyle
                                        .poppins400secondary16
                                        .copyWith(fontSize: 13),
                                    dayStrStyle: CustomTextStyle
                                        .poppins400secondary16
                                        .copyWith(fontSize: 13),
                                    monthStrStyle: CustomTextStyle
                                        .poppins400secondary16
                                        .copyWith(fontSize: 13),
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                          SizedBox(height: 14.h),
                          //* Select time
                          Text(
                            AppStrings.selectaTime.tr(context),
                            style: CustomTextStyle.poppins600secondary16,
                          ),
                          SizedBox(height: 5.h),
                          SizedBox(
                            width: double.maxFinite,
                            height: 40.h,
                            child: ListView.builder(
                              itemCount: 10,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  onTap: () {},
                                  child: Container(
                                    width: 82.h,
                                    height: 40.h,
                                    margin:
                                        EdgeInsets.symmetric(horizontal: 5.w),
                                    decoration: BoxDecoration(
                                      color: AppColors.lightGrey,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '12:00',
                                        style: CustomTextStyle
                                            .poppins400secondary16,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
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
