import 'package:flutter/material.dart';
import 'package:flutter_calendar_carousel/classes/event.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/screens/success_dialog.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:habit_builder/widgets/custom_submitbutton.dart';
import 'package:flutter_calendar_carousel/flutter_calendar_carousel.dart' show CalendarCarousel;

class HabitDetailScreen extends StatefulWidget {
  const HabitDetailScreen({Key? key}) : super(key: key);

  @override
  State<HabitDetailScreen> createState() => _HabitDetailScreenState();
}

class _HabitDetailScreenState extends State<HabitDetailScreen> {
  var today = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.w, left: 20.w, bottom: 25.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: 44.w,
                          width: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: AppColors.darkTheme.withOpacity(0.1),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 13.w),
                          child: SvgPicture.asset(
                            "assets/images/back.svg",
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Read A Book",
                      style: ManropeBold.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.darkTheme,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        height: 44.w,
                        width: 44.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: AppColors.darkTheme.withOpacity(0.1),
                        ),
                        child: SvgPicture.asset(
                          "assets/images/edit.svg",
                        ),
                        padding: EdgeInsets.symmetric(vertical: 13.w, horizontal: 13.w),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  padding: EdgeInsets.all(12.w),
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 75.w,
                        width: 75.w,
                        padding: EdgeInsets.all(7.w),
                        decoration: BoxDecoration(
                          color: AppColors.darkOrange.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12.r),
                          child: Image.asset(
                            "assets/images/bg9.png",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Read a Book",
                              style: ManropeBold.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  width: 15.w,
                                  height: 15.w,
                                  "assets/images/bell.svg",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Repeat everyday",
                                  style: ManropeMedium.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.darkTheme.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  width: 14.w,
                                  height: 13.w,
                                  "assets/images/loop.svg",
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Reminders: 5:00 am",
                                  style: ManropeMedium.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.darkTheme.withOpacity(0.5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              calenderWidget(),
              SizedBox(
                height: 17.h,
              ),
              Column(
                children: [
                  Transform.rotate(
                    angle: -3.14,
                    child: Container(
                      height: 25.h,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [AppColors.shade, AppColors.primaryBg],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Text(
                    "Analytics",
                    style: ManropeMedium.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.darkTheme.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Container(
                      height: 184.w,
                      decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "20 DAYS",
                                                style: Klasik.copyWith(
                                                  fontSize: 24.sp,
                                                  color: AppColors.darkTheme,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Text(
                                                "Longest Streak",
                                                style: ManropeMedium.copyWith(
                                                  fontSize: 12.sp,
                                                  color: AppColors.darkTheme.withOpacity(0.5),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/images/fire.svg",
                                          height: 38.w,
                                          width: 38.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 2.w,
                                  color: AppColors.primaryBg,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "98 %",
                                                style: Klasik.copyWith(
                                                  fontSize: 24.sp,
                                                  color: AppColors.darkTheme,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Text(
                                                "Completion Rate",
                                                style: ManropeMedium.copyWith(
                                                  fontSize: 12.sp,
                                                  color: AppColors.darkTheme.withOpacity(0.5),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/images/stats.svg",
                                          height: 38.w,
                                          width: 38.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 2.w,
                            color: AppColors.primaryBg,
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "0 DAYS",
                                                style: Klasik.copyWith(
                                                  fontSize: 24.sp,
                                                  color: AppColors.darkTheme,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Text(
                                                "Current Streak",
                                                style: ManropeMedium.copyWith(
                                                  fontSize: 12.sp,
                                                  color: AppColors.darkTheme.withOpacity(0.5),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/images/flash.svg",
                                          height: 38.w,
                                          width: 38.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 2.w,
                                  color: AppColors.primaryBg,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 19.h),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "7",
                                                style: Klasik.copyWith(
                                                  fontSize: 24.sp,
                                                  color: AppColors.darkTheme,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 8.h,
                                              ),
                                              Text(
                                                "Average Easiness Score",
                                                style: ManropeMedium.copyWith(
                                                  fontSize: 12.sp,
                                                  color: AppColors.darkTheme.withOpacity(0.5),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        SvgPicture.asset(
                                          "assets/images/leaf.svg",
                                          height: 38.w,
                                          width: 38.w,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            showAlertDialog(context);
                          },
                          child: const CustomSubmitButton(
                            text: "Mark Habit as Complete",
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        const CustomSubmitButton(
                          text: "Mark Habit as Missed",
                          bgColor: AppColors.white,
                        ),
                      ],
                    ),
                  ),
                ],
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

  showAlertDialog(BuildContext context) {
    // show the dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return const SuccessDialog();
      },
    );
  }

  List<DateTime> eventDays = [];
  Widget calenderWidget() {
    for (var i = 1; i <= today.day; i++) {
      eventDays.add(DateTime(2023, 3, i));
    }

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: AppColors.white,
        ),
        child: CalendarCarousel<Event>(
          onDayPressed: (DateTime date, List<Event> events) {},
          thisMonthDayBorderColor: Colors.grey,
          customDayBuilder: (
            bool isSelectable,
            int index,
            bool isSelectedDay,
            bool isToday,
            bool isPrevMonthDay,
            TextStyle textStyle,
            bool isNextMonthDay,
            bool isThisMonthDay,
            DateTime day,
          ) {
            if (isPrevMonthDay || isNextMonthDay) {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryBg.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(12.r),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      day.day.toString(),
                      style: ManropeBold.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.darkTheme.withOpacity(0.3),
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    SvgPicture.asset(
                      "assets/images/disable.svg",
                      height: 38.w,
                      width: 38.w,
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                  color: AppColors.primaryBg,
                  borderRadius: BorderRadius.circular(12.r),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      day.day.toString(),
                      style: ManropeBold.copyWith(
                        fontSize: 14.sp,
                        color: AppColors.darkTheme,
                      ),
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
                    if (eventDays.contains(day))
                      SvgPicture.asset(
                        "assets/images/half.svg",
                        height: 38.w,
                        width: 38.w,
                      )
                    else
                      SvgPicture.asset(
                        "assets/images/none.svg",
                        height: 38.w,
                        width: 38.w,
                      ),
                  ],
                ),
              );
            }
          },
          dayPadding: 3.h,
          childAspectRatio: 0.65,
          weekFormat: false,
          height: 570.w,
          daysHaveCircularBorder: null,
          daysTextStyle: ManropeBold.copyWith(
            fontSize: 14.sp,
            color: AppColors.darkTheme,
          ),
          markedDateCustomShapeBorder: const StadiumBorder(side: BorderSide.none),
          selectedDayBorderColor: Colors.transparent,
          todayBorderColor: Colors.transparent,
          markedDateIconBorderColor: Colors.transparent,
          nextMonthDayBorderColor: Colors.transparent,
          prevMonthDayBorderColor: Colors.transparent,
          customWeekDayBuilder: (weekday, weekdayName) {
            return Expanded(
              child: Text(
                weekdayName,
                style: ManropeBold.copyWith(
                  fontSize: 10.sp,
                  color: AppColors.darkTheme.withOpacity(0.5),
                ),
                textAlign: TextAlign.center,
              ),
            );
          },
          customGridViewPhysics: const NeverScrollableScrollPhysics(),
          pageScrollPhysics: const NeverScrollableScrollPhysics(),
          todayButtonColor: Colors.transparent,
          headerMargin: EdgeInsets.zero,
          markedDateIconMargin: 0,
          weekDayMargin: EdgeInsets.zero,
          leftButtonIcon: RotatedBox(
            quarterTurns: 2,
            child: SvgPicture.asset(
              "assets/images/arrow.svg",
              color: AppColors.darkTheme,
            ),
          ),
          rightButtonIcon: SvgPicture.asset(
            "assets/images/arrow.svg",
            color: AppColors.darkTheme,
          ),
          headerTextStyle: ManropeBold.copyWith(
            fontSize: 16.sp,
            color: AppColors.darkTheme,
          ),
        ),
      ),
    );
  }
}
