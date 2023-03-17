import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/screens/premium_screen.dart';
import 'package:habit_builder/screens/profile_screen.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        onTap: () {},
                        child: Container(
                          height: 44.w,
                          width: 44.w,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.r),
                            color: AppColors.darkTheme.withOpacity(0.1),
                          ),
                          child: SvgPicture.asset(
                            "assets/images/menu.svg",
                          ),
                          // padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 13.w),
                        ),
                      ),
                    ),
                    Text(
                      "Settings",
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
                  height: 24.h,
                ),
                Container(
                  decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(12.r)),
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
                              "assets/images/bg6.png",
                              height: 146.w,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.55,
                        alignment: Alignment.center,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Check Your Profile",
                                style: ManropeBold.copyWith(
                                  fontSize: 20.sp,
                                  color: AppColors.darkTheme,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "jonathansmith@gmail.com",
                                style: ManropeBold.copyWith(
                                  fontSize: 12.sp,
                                  color: AppColors.darkTheme.withOpacity(0.5),
                                ),
                              ),
                              SizedBox(
                                height: 22.h,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (_) => const ProfileScreen()));
                                },
                                child: Container(
                                  height: 40.h,
                                  width: 120.w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.r),
                                    color: AppColors.darkOrange,
                                  ),
                                  child: Center(
                                    child: Text(
                                      "View",
                                      style: ManropeBold.copyWith(
                                        fontSize: 14.sp,
                                        color: AppColors.darkTheme,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "General",
                    style: ManropeSemiBold.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.darkTheme,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  padding: EdgeInsets.fromLTRB(8.w, 18.h, 20.w, 18.h),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        height: 38.w,
                        width: 38.w,
                        "assets/images/noti.svg",
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Notifications",
                              style: ManropeSemiBold.copyWith(
                                fontSize: 16.sp,
                                color: AppColors.darkTheme,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              "Customize notifications",
                              style: ManropeSemiBold.copyWith(
                                fontSize: 14.sp,
                                color: AppColors.darkTheme.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/images/arrow.svg",
                        color: AppColors.darkTheme,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => const PremiumScreen()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      color: AppColors.white,
                    ),
                    padding: EdgeInsets.fromLTRB(8.w, 18.h, 20.w, 18.h),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          height: 38.w,
                          width: 38.w,
                          "assets/images/more.svg",
                        ),
                        SizedBox(
                          width: 12.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "More customization",
                                style: ManropeSemiBold.copyWith(
                                  fontSize: 16.sp,
                                  color: AppColors.darkTheme,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                "Customize it more to fit your usage",
                                style: ManropeSemiBold.copyWith(
                                  fontSize: 14.sp,
                                  color: AppColors.darkTheme.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SvgPicture.asset(
                          "assets/images/arrow.svg",
                          color: AppColors.darkTheme,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 17.h,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Support",
                    style: ManropeSemiBold.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.darkTheme,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  padding: EdgeInsets.fromLTRB(6.w, 6.w, 20.w, 6.w),
                  child: Row(
                    children: [
                      Container(
                        height: 38.w,
                        width: 38.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.primaryBg,
                        ),
                        padding: EdgeInsets.all(10.w),
                        child: SvgPicture.asset(
                          "assets/images/contact.svg",
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Text(
                          "Contact",
                          style: ManropeSemiBold.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/images/arrow.svg",
                        color: AppColors.darkTheme,
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
                  padding: EdgeInsets.fromLTRB(6.w, 6.w, 20.w, 6.w),
                  child: Row(
                    children: [
                      Container(
                        height: 38.w,
                        width: 38.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.primaryBg,
                        ),
                        padding: EdgeInsets.all(10.w),
                        child: SvgPicture.asset(
                          "assets/images/chat.svg",
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Text(
                          "Feedback",
                          style: ManropeSemiBold.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/images/arrow.svg",
                        color: AppColors.darkTheme,
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
                  padding: EdgeInsets.fromLTRB(6.w, 6.w, 20.w, 6.w),
                  child: Row(
                    children: [
                      Container(
                        height: 38.w,
                        width: 38.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.primaryBg,
                        ),
                        padding: EdgeInsets.all(10.w),
                        child: SvgPicture.asset(
                          "assets/images/shield.svg",
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Text(
                          "Privacy Policy",
                          style: ManropeSemiBold.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/images/arrow.svg",
                        color: AppColors.darkTheme,
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
                  padding: EdgeInsets.fromLTRB(6.w, 6.w, 20.w, 6.w),
                  child: Row(
                    children: [
                      Container(
                        height: 38.w,
                        width: 38.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.r),
                          color: AppColors.primaryBg,
                        ),
                        padding: EdgeInsets.all(10.w),
                        child: SvgPicture.asset(
                          "assets/images/info.svg",
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Text(
                          "About",
                          style: ManropeSemiBold.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/images/arrow.svg",
                        color: AppColors.darkTheme,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 100.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
