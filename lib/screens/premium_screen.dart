import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';
import 'package:habit_builder/widgets/custom_submitbutton.dart';
import 'package:rotated_corner_decoration/rotated_corner_decoration.dart';

class PremiumScreen extends StatefulWidget {
  const PremiumScreen({Key? key}) : super(key: key);

  @override
  State<PremiumScreen> createState() => _PremiumScreenState();
}

class _PremiumScreenState extends State<PremiumScreen> {
  static var countdownDuration = const Duration();
  Duration duration = const Duration();
  Timer? timer;
  bool countDown = true;

  @override
  void initState() {
    super.initState();
    var hours;
    var mints;
    var secs;
    hours = int.parse("10");
    mints = int.parse("00");
    secs = int.parse("00");
    countdownDuration = Duration(hours: hours, minutes: mints, seconds: secs);
    startTimer();
    reset();
  }

  void reset() {
    if (countDown) {
      setState(() => duration = countdownDuration);
    } else {
      setState(() => duration = const Duration());
    }
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (_) => addTime());
  }

  void addTime() {
    const addSeconds = 1;
    setState(() {
      final seconds = duration.inSeconds - addSeconds;
      if (seconds < 0) {
        timer?.cancel();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    if (timer != null) {
      timer!.cancel();
    }
  }

  @override
  Widget build(BuildContext context) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(right: 20.w, left: 20.w),
            child: Column(
              children: [
                SizedBox(
                  height: 40.h,
                ),
                Row(
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
                      "Premium",
                      style: ManropeBold.copyWith(
                        fontSize: 18.sp,
                        color: AppColors.darkTheme,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        height: 44.w,
                        width: 44.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 42.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox.shrink(),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12.r),
                            child: Image.asset(
                              "assets/images/bg11.png",
                              height: 146.w,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.55,
                        // color: Colors.red,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "60% off your upgrade",
                                style: ManropeBold.copyWith(
                                  fontSize: 20.sp,
                                  color: AppColors.darkOrange,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Expires in ",
                                style: ManropeSemiBold.copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.darkTheme.withOpacity(0.5),
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 41.w,
                                    width: 41.w,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: AppColors.darkTheme.withOpacity(0.1),
                                    ),
                                    child: Text(
                                      hours,
                                      style: ManropeBold.copyWith(
                                        fontSize: 16.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    ":",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 16.sp,
                                      color: AppColors.darkTheme,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Container(
                                    height: 41.w,
                                    width: 41.w,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: AppColors.darkTheme.withOpacity(0.1),
                                    ),
                                    child: Text(
                                      minutes,
                                      style: ManropeBold.copyWith(
                                        fontSize: 16.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    ":",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 16.sp,
                                      color: AppColors.darkTheme,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Container(
                                    height: 41.w,
                                    width: 41.w,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.r),
                                      color: AppColors.darkTheme.withOpacity(0.1),
                                    ),
                                    child: Text(
                                      seconds,
                                      style: ManropeBold.copyWith(
                                        fontSize: 16.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 18.h),
                          child: Text(
                            "Unlock Monumental Habits",
                            style: ManropeBold.copyWith(
                              fontSize: 20.sp,
                              color: AppColors.darkTheme,
                            ),
                          ),
                        ),
                        Container(
                          height: 2.w,
                          color: AppColors.primaryBg,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Container(
                                height: 22.w,
                                width: 22.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.r),
                                  color: AppColors.darkOrange,
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.h),
                                child: SvgPicture.asset(
                                  "assets/images/tick.svg",
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: Text(
                                  "Unlimited habits",
                                  style: ManropeSemiBold.copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.darkTheme,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 2.w,
                          color: AppColors.primaryBg,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Container(
                                height: 22.w,
                                width: 22.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.r),
                                  color: AppColors.darkOrange,
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.h),
                                child: SvgPicture.asset(
                                  "assets/images/tick.svg",
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: Text(
                                  "Access to all courses",
                                  style: ManropeSemiBold.copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.darkTheme,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 2.w,
                          color: AppColors.primaryBg,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 20.w),
                          child: Row(
                            children: [
                              Container(
                                height: 22.w,
                                width: 22.w,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100.r),
                                  color: AppColors.darkOrange,
                                ),
                                padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.h),
                                child: SvgPicture.asset(
                                  "assets/images/tick.svg",
                                ),
                              ),
                              SizedBox(
                                width: 20.w,
                              ),
                              Expanded(
                                child: Text(
                                  "Access to all avatar illustrations",
                                  style: ManropeSemiBold.copyWith(
                                    fontSize: 16.sp,
                                    color: AppColors.darkTheme,
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
                  height: 28.h,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5.h, 30.h, 5.h, 20.h),
                              child: Column(
                                children: [
                                  Text(
                                    "\$19.00",
                                    style: ManropeBold.copyWith(
                                      fontSize: 24.sp,
                                      color: AppColors.darkOrange,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "6-month plan for 39.99 usd",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 2.w,
                              color: AppColors.primaryBg,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Text(
                                "Monthly",
                                style: ManropeBold.copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.darkTheme,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10.h),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(12.r),
                                ),
                                color: AppColors.darkOrange,
                              ),
                              child: Center(
                                child: Text(
                                  "Most Popular",
                                  style: ManropeBold.copyWith(
                                    fontSize: 12.sp,
                                    color: AppColors.darkTheme,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 5.h),
                              child: Column(
                                children: [
                                  Text(
                                    "\$29.00",
                                    style: ManropeBold.copyWith(
                                      fontSize: 24.sp,
                                      color: AppColors.darkOrange,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "6-month plan for 39.99 usd",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 2.w,
                              color: AppColors.primaryBg,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 8.h),
                              child: Text(
                                "Yearly",
                                style: ManropeBold.copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.darkTheme,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    Expanded(
                      child: Container(
                        foregroundDecoration: RotatedCornerDecoration.withColor(
                          color: AppColors.darkOrange,
                          badgeSize: Size(38.w, 38.w),
                          badgeCornerRadius: Radius.circular(12.r),
                          badgePosition: BadgePosition.bottomEnd,
                          textSpan: TextSpan(
                            text: '-75%',
                            style: ManropeBold.copyWith(
                              fontSize: 10.sp,
                              color: AppColors.darkTheme,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(12.r),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(5.h, 30.h, 5.h, 20.h),
                              child: Column(
                                children: [
                                  Text(
                                    "\$49.00",
                                    style: ManropeBold.copyWith(
                                      fontSize: 24.sp,
                                      color: AppColors.darkOrange,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    "6-month plan for 39.99 usd",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 2.w,
                              color: AppColors.primaryBg,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.h, bottom: 8.h, left: 20.w),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Lifetime",
                                    style: ManropeBold.copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.darkTheme,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 51.h,
                ),
                const CustomSubmitButton(text: "Subscribe Now"),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/n_shield.svg",
                    ),
                    SizedBox(
                      width: 5.w,
                    ),
                    Text(
                      "Secured with Goggle Play. Cancel anytime",
                      style: ManropeSemiBold.copyWith(
                        fontSize: 12.sp,
                        color: AppColors.darkTheme,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                Text(
                  "Restore Purchase",
                  style: ManropeBold.copyWith(
                    fontSize: 12.sp,
                    color: AppColors.darkOrange,
                    decoration: TextDecoration.underline,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Terms of Service',
                    style: ManropeBold.copyWith(
                      fontSize: 12.sp,
                      color: AppColors.darkTheme,
                      decoration: TextDecoration.underline,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '  ',
                        style: ManropeBold.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.darkTheme,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: 'and',
                        style: ManropeSemiBold.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.darkTheme.withOpacity(0.5),
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      TextSpan(
                        text: '  ',
                        style: ManropeBold.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.darkTheme,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: ManropeBold.copyWith(
                          fontSize: 12.sp,
                          color: AppColors.darkTheme,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
