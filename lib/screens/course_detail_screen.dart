import 'package:flutter/material.dart';
import 'package:habit_builder/values/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:habit_builder/values/text_styles.dart';

class CourseDetailScreen extends StatefulWidget {
  const CourseDetailScreen({Key? key}) : super(key: key);

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryBg,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(right: 20.w, left: 20.w),
          child: SingleChildScrollView(
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
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 32.w),
                        child: Text(
                          "30 Day Journal Challenge - Establish a Habit of Daily Journaling",
                          style: ManropeBold.copyWith(
                            fontSize: 18.sp,
                            color: AppColors.darkTheme,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.h,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        "https://images.pexels.com/photos/1031588/pexels-photo-1031588.jpeg?cs=srgb&dl=pexels-rahul-shah-1031588.jpg&fm=jpg",
                        height: 200.w,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      SvgPicture.asset(
                        "assets/images/play.svg",
                        height: 40.w,
                        width: 40.w,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: AppColors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 7.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 18.h),
                        child: Text(
                          "30 Day Journal Challenge - Establish a Habit of Daily Journaling",
                          style: ManropeBold.copyWith(
                            fontSize: 18.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                      Container(
                        height: 2.w,
                        color: AppColors.primaryBg,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 18.h),
                        child: Text(
                          "37 Lessons (2h 41m)",
                          style: ManropeBold.copyWith(
                            fontSize: 18.sp,
                            color: AppColors.darkTheme,
                          ),
                        ),
                      ),
                      Container(
                        height: 2.w,
                        color: AppColors.primaryBg,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(12.r),
                          bottomLeft: Radius.circular(12.r),
                        ),
                        child: ListView.builder(
                          itemCount: 2,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 6.h),
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        index == 0 ? "assets/images/n_play.svg" : "assets/images/n_lock.svg",
                                        height: 38.w,
                                        width: 38.w,
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Expanded(
                                        child: Text(
                                          index == 0 ? "1. Introduction" : "2. Adopting Prompts to Covid-19",
                                          style: ManropeSemiBold.copyWith(
                                            fontSize: 16.sp,
                                            color: AppColors.darkTheme,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 14.w,
                                      ),
                                      Text(
                                        index == 0 ? "2:16" : "3:08",
                                        style: ManropeSemiBold.copyWith(
                                          fontSize: 16.sp,
                                          color: AppColors.darkTheme.withOpacity(0.5),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 2.w,
                                  color: AppColors.primaryBg,
                                ),
                              ],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
