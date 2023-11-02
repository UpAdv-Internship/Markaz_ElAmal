import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';
import 'package:markaz_elamal/core/common/common.dart';
import 'package:markaz_elamal/core/database/cache/cache_helper.dart';
import 'package:markaz_elamal/core/locale/app_locale.dart';
import 'package:markaz_elamal/core/router/app_router.dart';
import 'package:markaz_elamal/core/services/service_locator.dart';
import 'package:markaz_elamal/core/utils/app_colors.dart';
import 'package:markaz_elamal/core/utils/app_strings.dart';
import 'package:markaz_elamal/core/utils/app_text_styles.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_cubit.dart';
import 'package:markaz_elamal/features/booking/presentation/booking_cubit/booking_state.dart';
import 'package:markaz_elamal/features/booking/presentation/components/doctor_card.dart';
import 'package:markaz_elamal/features/booking/presentation/components/gride_view_change_button.dart';

class BookScreen extends StatelessWidget {
  const BookScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        elevation: 0,
        title: Text(
          AppStrings.selectDateAndTime.tr(context),
          style: CustomTextStyle.openSans700white26,
        ),
        centerTitle: true,
        leading: Container(),
      ),
      body: BlocBuilder<BookingCubit, BookingState>(
        builder: (context, state) {
          final bookingCubit = BlocProvider.of<BookingCubit>(context);
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                //! Today Date
                Text(
                  DateFormat.yMMMd().format(DateTime.now()),
                  style: CustomTextStyle.openSans700secondry26,
                ),
                SizedBox(height: 25.h),
                //! Today Text
                Text(
                  AppStrings.today.tr(context),
                  style: CustomTextStyle.openSans700secondry26,
                ),
                SizedBox(height: 24.h),
                //! Date Picker
                EasyInfiniteDateTimeLine(
                  locale: sl<CacheHelper>().getCachedLanguage(),
                  onDateChange: (selectedDate) {
                    bookingCubit.changeDate(selectedDate);
                  },
                  firstDate: DateTime.now(),
                  focusDate: bookingCubit.focusDate,
                  timeLineProps: const EasyTimeLineProps(
                    vPadding: 0,
                    hPadding: 0,
                    separatorPadding: 10,
                  ),
                  showTimelineHeader: false,
                  lastDate: DateTime(DateTime.now().year, DateTime.now().month,
                      DateTime.now().day + 30),
                  dayProps: EasyDayProps(
                    width: 60.w,
                    height: 160.h,
                    dayStructure: DayStructure.dayStrDayNumMonth,
                    todayStyle: DayStyle(
                      borderRadius: 16,
                      dayNumStyle: CustomTextStyle.poppins600secondary16,
                      dayStrStyle: CustomTextStyle.poppins600secondary16,
                      monthStrStyle: CustomTextStyle.poppins600secondary16,
                      decoration: BoxDecoration(
                        border: Border.all(color: AppColors.lightGrey),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    activeDayStyle: DayStyle(
                      dayNumStyle: CustomTextStyle.poppins600secondary16,
                      dayStrStyle: CustomTextStyle.poppins600secondary16,
                      monthStrStyle: CustomTextStyle.poppins600secondary16,
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey,
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    inactiveDayStyle: DayStyle(
                      borderRadius: 16,
                      dayNumStyle: CustomTextStyle.poppins600secondary16,
                      dayStrStyle: CustomTextStyle.poppins600secondary16,
                      monthStrStyle: CustomTextStyle.poppins600secondary16,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                //! Divider
                Divider(
                  thickness: 1.h,
                  color: AppColors.primary,
                ),
                SizedBox(height: 16.h),
                //! Fillter Row
                Row(
                  children: [
                    Text(
                      AppStrings.availableDoctor.tr(context),
                      style: CustomTextStyle.poppins600secondary20,
                    ),
                    const Spacer(),
                    Container(
                      width: 95.w,
                      height: 41.h,
                      decoration: BoxDecoration(
                        color: AppColors.darkWhite,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GridViewChangeButton(
                            onTap: () {
                              bookingCubit.gridViewChange(true);
                            },
                            icon: Icons.grid_view,
                            isGrid: bookingCubit.isGrid,
                          ),
                          SizedBox(width: 11.w),
                          GridViewChangeButton(
                            onTap: () {
                              bookingCubit.gridViewChange(false);
                            },
                            icon: Icons.menu,
                            isGrid: !bookingCubit.isGrid,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h),
                //! Grid Body
                Expanded(
                  child: MasonryGridView.count(
                    crossAxisCount: bookingCubit.crossAxisNum,
                    itemCount: 3,
                    crossAxisSpacing: 18.w,
                    mainAxisSpacing: 11.h,
                    padding: const EdgeInsets.all(0),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          navigate(
                              context: context, route: Routes.doctorProfile);
                        },
                        child: DoctorCard(
                          isGrid: bookingCubit.isGrid,
                          doctorImage: 'assets/images/osama1.png',
                          doctorName: 'Dr: Osama ali',
                          doctorCatogory: 'Speech',
                          rate: 4.9,
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
