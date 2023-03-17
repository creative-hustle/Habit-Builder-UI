import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:habit_builder/values/text_styles.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final items = ['Yesterday', 'Today', 'This week', 'Custom'];
  String selectedValue = 'This week';

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
                      "Profile",
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
                        padding: EdgeInsets.symmetric(vertical: 13.w, horizontal: 13.w),
                        child: SvgPicture.asset(
                          "assets/images/edit.svg",
                        ),
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
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(12.r),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100.r),
                              child: Image.asset(
                                "assets/images/bg8.png",
                                height: 60.w,
                                width: 60.w,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Marilyn Aminoff",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 16.sp,
                                      color: AppColors.darkTheme,
                                    ),
                                  ),
                                  Text(
                                    "Name",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 12.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                height: 33.w,
                                padding: EdgeInsets.symmetric(horizontal: 10.w),
                                decoration: BoxDecoration(
                                  color: AppColors.white,
                                  borderRadius: BorderRadius.circular(20.r),
                                  border: Border.all(
                                    color: AppColors.darkTheme.withOpacity(0.2),
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: DropdownButton<String>(
                                  value: selectedValue,
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedValue = newValue!;
                                    });
                                  },
                                  items: items
                                      .map<DropdownMenuItem<String>>((String value) => DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(
                                              value,
                                              style: ManropeSemiBold.copyWith(
                                                fontSize: 14.sp,
                                                color: AppColors.darkTheme,
                                              ),
                                            ),
                                          ))
                                      .toList(),
                                  icon: Padding(
                                    padding: EdgeInsets.only(top: 5.h),
                                    child: RotatedBox(
                                      quarterTurns: 1,
                                      child: SvgPicture.asset(
                                        "assets/images/arrow.svg",
                                        color: AppColors.darkTheme,
                                      ),
                                    ),
                                  ),
                                  alignment: Alignment.centerLeft,
                                  isExpanded: true,
                                  underline: SizedBox.shrink(),
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
                      SizedBox(
                        height: 71.w,
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Total Work Hours",
                                          style: ManropeSemiBold.copyWith(
                                            fontSize: 12.sp,
                                            color: AppColors.darkTheme.withOpacity(0.5),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "18",
                                          style: Klasik.copyWith(
                                            fontSize: 24.sp,
                                            color: AppColors.darkTheme,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 40.w,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100.r),
                                        color: AppColors.primaryBg,
                                      ),
                                      padding: EdgeInsets.all(11.w),
                                      child: SvgPicture.asset(
                                        "assets/images/clock.svg",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 2.w,
                              color: AppColors.primaryBg,
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 15.w),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Task Completed ",
                                          style: ManropeSemiBold.copyWith(
                                            fontSize: 12.sp,
                                            color: AppColors.darkTheme.withOpacity(0.5),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          "12",
                                          style: Klasik.copyWith(
                                            fontSize: 24.sp,
                                            color: AppColors.darkTheme,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      height: 40.w,
                                      width: 40.w,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(100.r),
                                        color: AppColors.darkBlue.withOpacity(0.1),
                                      ),
                                      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 10.w),
                                      child: SvgPicture.asset(
                                        "assets/images/flag.svg",
                                      ),
                                    ),
                                  ],
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
                      Container(
                        height: 104.w,
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        height: 42.15.w,
                                        width: 42.15.w,
                                        child: CircularProgressIndicator(
                                          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.darkTheme),
                                          value: 0.5,
                                          backgroundColor: AppColors.darkTheme.withOpacity(0.1),
                                        ),
                                      ),
                                      Text(
                                        "7",
                                        style: ManropeSemiBold.copyWith(
                                          fontSize: 14.sp,
                                          color: AppColors.darkTheme,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "06/14",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        height: 42.15.w,
                                        width: 42.15.w,
                                        child: CircularProgressIndicator(
                                          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.darkRed),
                                          value: 0.05,
                                          backgroundColor: AppColors.darkRed.withOpacity(0.1),
                                        ),
                                      ),
                                      Text(
                                        "0",
                                        style: ManropeSemiBold.copyWith(
                                          fontSize: 14.sp,
                                          color: AppColors.darkRed,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkRed.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        height: 42.15.w,
                                        width: 42.15.w,
                                        child: CircularProgressIndicator(
                                          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.darkTheme),
                                          value: 0.5,
                                          backgroundColor: AppColors.darkTheme.withOpacity(0.1),
                                        ),
                                      ),
                                      Text(
                                        "6",
                                        style: ManropeSemiBold.copyWith(
                                          fontSize: 14.sp,
                                          color: AppColors.darkTheme,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "06/15",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        height: 42.15.w,
                                        width: 42.15.w,
                                        child: CircularProgressIndicator(
                                          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.darkTheme),
                                          value: 0.4,
                                          backgroundColor: AppColors.darkTheme.withOpacity(0.1),
                                        ),
                                      ),
                                      Text(
                                        "5",
                                        style: ManropeSemiBold.copyWith(
                                          fontSize: 14.sp,
                                          color: AppColors.darkTheme,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        height: 42.15.w,
                                        width: 42.15.w,
                                        child: CircularProgressIndicator(
                                          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.darkTheme),
                                          value: 0.3,
                                          backgroundColor: AppColors.darkTheme.withOpacity(0.1),
                                        ),
                                      ),
                                      Text(
                                        "4",
                                        style: ManropeSemiBold.copyWith(
                                          fontSize: 14.sp,
                                          color: AppColors.darkTheme,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "06/16",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.yellow,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        SizedBox(
                                          height: 42.15.w,
                                          width: 42.15.w,
                                          child: CircularProgressIndicator(
                                            valueColor: const AlwaysStoppedAnimation<Color>(AppColors.darkTheme),
                                            value: 0.9,
                                            backgroundColor: AppColors.darkTheme.withOpacity(0.1),
                                          ),
                                        ),
                                        Text(
                                          "9",
                                          style: ManropeSemiBold.copyWith(
                                            fontSize: 14.sp,
                                            color: AppColors.darkTheme,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12.h,
                                    ),
                                    Text(
                                      "",
                                      style: ManropeSemiBold.copyWith(
                                        fontSize: 10.sp,
                                        color: AppColors.darkTheme.withOpacity(0.5),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      SizedBox(
                                        height: 42.15.w,
                                        width: 42.15.w,
                                        child: CircularProgressIndicator(
                                          valueColor: const AlwaysStoppedAnimation<Color>(AppColors.darkOrange),
                                          value: 0.5,
                                          backgroundColor: AppColors.darkOrange.withOpacity(0.1),
                                        ),
                                      ),
                                      Text(
                                        "10",
                                        style: ManropeSemiBold.copyWith(
                                          fontSize: 14.sp,
                                          color: AppColors.darkOrange,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12.h,
                                  ),
                                  Text(
                                    "Today",
                                    style: ManropeSemiBold.copyWith(
                                      fontSize: 10.sp,
                                      color: AppColors.darkTheme.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
                        padding: EdgeInsets.symmetric(vertical: 12.w, horizontal: 9.w),
                        child: SvgPicture.asset(
                          "assets/images/doc.svg",
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Text(
                          "Billing methods",
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
                        padding: EdgeInsets.symmetric(vertical: 8.w, horizontal: 11.w),
                        child: SvgPicture.asset(
                          "assets/images/medal.svg",
                        ),
                      ),
                      SizedBox(
                        width: 12.w,
                      ),
                      Expanded(
                        child: Text(
                          "Longest Streak",
                          style: ManropeSemiBold.copyWith(
                            fontSize: 16.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                      Text(
                        "20 Days",
                        style: ManropeSemiBold.copyWith(
                          fontSize: 16.sp,
                          color: AppColors.darkTheme,
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      SvgPicture.asset(
                        "assets/images/arrow.svg",
                        color: AppColors.darkTheme,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
